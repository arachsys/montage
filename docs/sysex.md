# [Yamaha Montage](/montage/): system exclusive messages

## Documented messages

The most recent data list corresponding to Montage firmware version 3.50 can
be found at:

  - <https://usa.yamaha.com/files/download/other_assets/9/1341759/montage_en_dl_j0.pdf>

This is quite detailed, running to over two hundred pages of documentation.

An interesting starting point for experimentation is a bulk dump of the
current performance edit buffer, which can be requested at `0e 25 00`. For
example:

```
> f0 43 2n 7f 1c 02 0e 25 00 f7
< f0 43 0n 7f 1c 00 04 02 0e 25 00 4b f7
< f0 43 0n 7f 1c mm mm 02 xx xx xx yy ... yy ss f7
...
< f0 43 0n 7f 1c 00 04 02 0f 25 00 4a f7
```

Note the device ID _n_ (often 0), the two byte big-endian payload size _m_
in between the `7f 1c` group ID and the `02` model ID for Montage, and the
7-bit checksum _s_ before the terminating `f7` of each message. These are
documented in section 3-5-4 of the MIDI Data Format chapter in the data
list, and the contents of the bulk dump itself are covered in the Bulk Dump
Block section of the MIDI Data Table.

Here and below, a 14-bit quantity _i_ is sent/received as two 7-bit MIDI
data bytes `ii ii` in big-endian order. Similarly a 28-bit quantity _j_ is
sent/received as four 7-bit bytes `jj jj jj jj` in big-endian order. Indices
in MIDI data are always zero-based, even where the UI enumerates from one.

My [system exclusive tool](https://arachsys.github.io/webmidi/sysex) may be
useful for trying out commands and observing responses. It can be quicker to
find a parameter with a diff between dumps before and after editing, than by
searching the data list.


## 7-in-8 encoding

Some of the undocumented MIDI commands below encapsulate 8-bit files inside
7-bit system exclusive data. Where this happens, successive chunks of seven
8-bit bytes are mapped to eight 7-bit data bytes as follows:

```
0b Aaaaaaaa      0b 0ABCDEFG
0b Bbbbbbbb      0b 0aaaaaaa
0b Cccccccc      0b 0bbbbbbb
0b Dddddddd  ->  0b 0ccccccc
0b Eeeeeeee      0b 0ddddddd
0b Ffffffff      0b 0eeeeeee
0b Gggggggg      0b 0fffffff
                 0b 0ggggggg
```

The final chunk of 8-bit data can be _n_ <= 7 bytes in length, corresponding
to output length _n_ + 1. For example,

```
0b Aaaaaaaa      0b 0ABC0000
0b Bbbbbbbb  ->  0b 0aaaaaaa
0b Cccccccc      0b 0bbbbbbb
                 0b 0ccccccc
```

Multi-byte words in these 8-bit payloads are stored in big-endian order.


## Select/request active live set

Change single byte parameter `09 00 00` to select the active live set:

```
> f0 43 1n 7f 1c 02 09 00 00 xx f7
```

Request parameter `09 00 00` to receive a single byte indicating the active
live set:

```
> f0 43 3n 7f 1c 02 09 00 00 f7
< f0 43 1n 7f 1c 02 09 00 00 xx f7
```

Here, _n_ is the device ID and _x_ is `0x00` for the preset live set, `0x01`
to `0x08` for user sets 1 to 8, or `0x09`, `0x0a`, ... for library sets.


## Request song/pattern list

Request a dump from address `0d 00 00` to receive the list of songs:

```
> f0 43 2n 7f 1c 02 0d 00 00 f7
< f0 43 0n 7f 1c mm mm 02 0d 00 00 kk kk 00 00 pp ... pp ss f7
< f0 43 0n 7f 1c mm mm 02 0d 00 00 kk kk 00 01 pp ... pp ss f7
  ...
< f0 43 0n 7f 1c mm mm 02 0d 00 00 kk kk jj jj pp ... pp ss f7
```

Request a dump from address `0d 40 00` to receive the list of patterns:

```
> f0 43 2n 7f 1c 02 0d 40 00 f7
< f0 43 0n 7f 1c mm mm 02 0d 40 00 kk kk 00 00 pp ... pp ss f7
< f0 43 0n 7f 1c mm mm 02 0d 40 00 kk kk 00 01 pp ... pp ss f7
  ...
< f0 43 0n 7f 1c mm mm 02 0d 40 00 kk kk jj jj pp ... pp ss f7
```

Here, _n_ is the device ID, _m_ and _s_ are the usual Yamaha bulk dump size
and checksum, _k_ = _j_ + 1 is the number of messages required to deliver
the payload, and there is a size limit _m_ <= 2216 determining _k_. The
payload chunks `pp ... pp` are 7-in-8 encoded. In practice, the list usually
fits in a single chunk and there is only a single reply:

```
> f0 43 2n 7f 1c 02 0d 00 00 f7
< f0 43 0n 7f 1c mm mm 02 0d 00 00 00 01 00 00 pp ... pp ss f7
> f0 43 2n 7f 1c 02 0d 40 00 f7
< f0 43 0n 7f 1c mm mm 02 0d 40 00 00 01 00 00 pp ... pp ss f7
```

When decoded, the payload is the song/pattern list in the following format:

```
nn nn
00 00 tt tt tt tt ll ll ss ... ss xx xx xx xx
00 01 tt tt tt tt ll ll ss ... ss xx xx xx xx
...
mm mm tt tt tt tt ll ll ss ... ss xx xx xx xx
```

where _n_ = _m_ + 1 is the number of songs/patterns, _t_ is the store time,
_l_ is the length of the name `ss ... ss`, and _x_ contains flags including
arp record and populated pattern scenes. Montage lacks an RTC so uses an
arbitrary incrementing counter to implement _t_ for date sort.


## Request song/pattern file

Request a dump from address `0c 00 nn` to receive song _n_.

```
> f0 43 2n 7f 1c 02 0c 00 nn f7
< f0 43 0n 7f 1c mm mm 02 0c 00 nn kk kk 00 00 pp ... pp ss f7
< f0 43 0n 7f 1c mm mm 02 0c 00 nn kk kk 00 01 pp ... pp ss f7
  ...
< f0 43 0n 7f 1c mm mm 02 0c 00 nn kk kk jj jj pp ... pp ss f7
```

Request a dump from address `0c 40 nn` to receive pattern _n_:

```
> f0 43 2n 7f 1c 02 0c 40 nn f7
< f0 43 0n 7f 1c mm mm 02 0c 40 nn kk kk 00 00 pp ... pp ss f7
< f0 43 0n 7f 1c mm mm 02 0c 40 nn kk kk 00 01 pp ... pp ss f7
  ...
< f0 43 0n 7f 1c mm mm 02 0c 40 nn kk kk jj jj pp ... pp ss f7
```

Here, _n_ is the device ID, _m_ and _s_ are the usual Yamaha bulk dump size
and checksum, _k_ = _j_ + 1 is the number of messages required to deliver
the payload, and there is a size limit _m_ <= 2216 determining _k_. The
payload chunks `pp ... pp` are 7-in-8 encoded.

Yamaha use these requests in Montage Connect to fetch songs and patterns
over USB MIDI. The files retrieved are in proprietary Yamaha format, but are
straightforward to map into standard MIDI files. As far as I know, it is not
possible to send songs or patterns back to the instrument over MIDI.


## Unknown requests

Montage Connect polls parameter `0a 00 00` every second, receiving a single
byte in response, apparently always zero from my Montage 8 v3.50:

```
> f0 43 30 7f 1c 02 0a 00 00 f7
< f0 43 10 7f 1c 02 0a 00 00 00 f7
```

It also makes a bulk request for `0b 00 00`, receiving payload `03 05 00 00
00 01 04 00` in response on my Montage 8 v3.50:

```
> f0 43 20 7f 1c 02 0b 00 00 f7
< f0 43 00 7f 1c 00 0c 02 0b 00 00 03 05 00 00 00 01 04 00 66 f7
```

The `03 05 00 00` looks suspiciously like the decimal digits of the firmware
version 3.50.0, but it's unclear what `00 01 04 00` encodes --- perhaps the
keyboard size or hardware version?


## Help needed

As far as I know there is no way to query the selected performance (bank
MSB, bank LSB and program number) over MIDI, although one can get its name
by dumping the edit buffer. This would be handy for building friendly,
responsive UIs that stay in sync with the instrument's own state.

Although parameter request `09 00 00` will return the current live set, as
far as I know there is no way to query the selected live set page or slot
over MIDI. Again, this would handy for keeping the UI of MIDI gadgets in
sync with the instrument itself.

I would love to be corrected on these assumptions, and also to see output
from the `0a 00 00` parameter request and `0b 00 00` dump request (above)
from different instruments or firmware versions.


## Contact

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.
