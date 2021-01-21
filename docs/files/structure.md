# [Yamaha Montage](/montage/) file format: top-level structure

X7U, X7L and X7A files all have an identical structure, but dump different
subsets of the Montage's storage. In particular, to load an X7L file into
the user bank, just rename the file with an X7U extension. Similarly, to
load an X7U file into a library slot, just rename it with an X7L extension.

Unless otherwise specified, in what follows all indices are zero-based, all
sizes, lengths and offsets are bytes, and integers are in big-endian order.
Montage lacks an RTC, so to allow lists to be date-sorted, it uses an
arbitrary 32-bit incrementing counter as a proxy for time stamps.

The "Full Tines 2" preset may be useful if the eccentric, ad-hoc design of
these binary files induces unexpected 1980s flashbacks.


## Header

The file header looks like:

```
00000000  59 41 4d 41 48 41 2d 59  53 46 43 00 00 00 00 00  |YAMAHA-YSFC.....|
00000010  34 2e 30 2e 35 00 00 00  00 00 00 00 00 00 00 00  |4.0.5...........|
00000020  nn nn nn nn ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
00000030  ll ll ll ll ff ff ff ff  ff ff ff ff tt tt tt tt  |................|
```

This version ("`4.0.5`") is current for Montage firmware versions 3.00 and
3.50.

_n_ is the size of the catalogue which follows the header, _l_ is the size
of the library info immediately after the catalogue, and _t_ - 1 is the most
recent time stamp on an item in the file.


## Catalogue

Top-level blocks of data within these files are identified by four letter
chunk IDs, for instance "`EPFM`" or "`DPFM`". The catalogue consists of
eight byte entries, each being the four byte identifier followed by the
32-bit offset of that block within the file.

Here is an example catalogue from an empty X7L file:

```
00000040  45 50 46 4d 00 00 00 f1  44 50 46 4d 00 00 00 fd  |EPFM....DPFM....|
00000050  45 57 46 4d 00 00 01 09  44 57 46 4d 00 00 01 15  |EWFM....DWFM....|
00000060  45 57 49 4d 00 00 01 21  44 57 49 4d 00 00 01 2d  |EWIM...!DWIM...-|
00000070  45 41 52 50 00 00 01 39  44 41 52 50 00 00 01 45  |EARP...9DARP...E|
00000080  45 43 52 56 00 00 01 51  44 43 52 56 00 00 01 5d  |ECRV...QDCRV...]|
00000090  45 4c 53 54 00 00 01 69  44 4c 53 54 00 00 01 75  |ELST...iDLST...u|
```


## Library info

Following the catalogue and before the first block, there is an area with a
source filename and other info for each of the populated library slots. The
format of this info is not yet documented here, but in the simple case where
all library slots are empty, it consists of 80 `0xff` bytes followed by a
single `0x00` byte, this length of 81 being declared in the file header:

```
000000a0  ff ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
000000b0  ff ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
000000c0  ff ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
000000d0  ff ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
000000e0  ff ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
000000f0  00                                                |.|
```

A self-contained X7U or X7L won't refer to waveforms, arpeggios or curves
from other libraries, so the library info can be left empty like this for
such files.

In the general case, the initial chunk of 80 bytes contains data other than
`0xff`, the next byte _n_ ranges from `0x00` to `0x08` indicating the number
of libraries installed, and it is followed by _n_ variable length chunks of
data for each library.


## Blocks

After the catalogue and padding, the blocks listed in the catalogue follow
one by one until the end of the file. Each block has the following format:

- 4 bytes identifier, e.g. "`EPFM`"
- 32-bit remaining length of the block (_n_ + 4)
- 32-bit count of `Entr` or `Data` items in the block (_k_)
- _n_ byte payload of _k_ `Entr` or `Data` chunks

There are two types of blocks, present in matching pairs. An _entry list_
has type beginning with 'E', e.g. "`EPFM`", and its corresponding _data
block_ has a type beginning with 'D', e.g. "`DPFM`". The 'E' block should
preceed the 'D' block in the file; order doesn't seem to matter otherwise.


## Entry lists ("Exxx")

Following the 12-byte block header, an entry list concatenates zero or more
entries of the form:

  - 4 bytes magic "`Entr`"
  - 32-bit length of this entry excluding these first 8 bytes
  - 32-bit size of the item corresponding to this entry
  - 32-bit offset of the item chunk within the data block
  - 32-bit program number --- type specific
  - 6 bytes of flags --- type specific
  - 32-bit time stamp for date-ordering
  - zero-terminated item name
  - zero-terminated title --- type specific, only non-empty for `EPFM`
  - optional additional data --- type specific, only used by `EPFM`

The number of entries must match the count described in the entry list
header and the number of items in the corresponding data block.

Program numbers generally have a bank number (`0x0001` = User, `0x0002` =
Library 1, `0x0003` = Library 2, ..., `0x0009` = Library 8) in the
most-significant 16-bits, followed by a zero-indexed item number in the
least-significant 16-bits. Some exceptions to this are described below.


## Data blocks ("Dxxx")

Following the 12-byte block header, a data block concatenates zero or more
item chunks of the form:

  - 4 bytes magic "`Data`"
  - 32-bit size of this item (_n_)
  - _n_ bytes of data for this item

The number of items must match the count described in the block header, and
_n_ must match the item size stored in the entry list for this item.


## Block types

Listed in the order used by the instrument, which first saves all non-empty
entry lists "`Exxx`", then the data blocks "`Dxxx`":

  - `EPFM`, `DPFM` --- performances
  - `EWFM`, `DWFM` --- waveform metadata
  - `EARP`, `DARP` --- arps
  - `EMSQ`, `DMSQ` --- motion sequences
  - `ELST`, `DLST` --- live sets
  - `ECRV`, `DCRV` --- curves
  - `EMTN`, `DMTN` --- microtunings
  - `EPTN`, `DPTN` --- user auditions
  - `EPAT`, `DPAT` --- patterns
  - `ESNG`, `DSNG` --- songs
  - `ESYS`, `DSYS` --- system settings
  - `EFVT`, `DFVT` --- favourites
  - `EPCH`, `DPCH` --- pattern chains
  - `EWIM`, `DWIM` --- wave data


## Performances ("EPFM")

Performances are numbered to match their MIDI number: `0x00xxyyzz`
corresponds to bank MSB _x_, bank LSB _y_ and program _z_. Note this means
_x_, _y_ and _z_ range from `0x00` to `0x7f`, not `0xff`. For reference, the
following ranges are used:

  - `0x3f0000` -- `0x3f1f7f` --- preset performances
  - `0x3f2000` -- `0x3f247f` --- user performances
  - `0x3f2800` -- `0x3f2c7f` --- library 1 performances
  - `0x3f2d00` -- `0x3f317f` --- library 2 performances
  - `0x3f3200` -- `0x3f367f` --- library 3 performances
  - `0x3f3700` -- `0x3f3b7f` --- library 4 performances
  - `0x3f3c00` -- `0x3f407f` --- library 5 performances
  - `0x3f4100` -- `0x3f457f` --- library 6 performances
  - `0x3f4600` -- `0x3f4a7f` --- library 7 performances
  - `0x3f4b00` -- `0x3f4f7f` --- library 8 performances

The 6-bytes of flags in the entries are allocated as follows:

  - 1 byte motion control flag (`0x00` = unset, `0x01` = set)
  - 1 byte tone generator type (`0x00` = AWM, `0x01` = FMX, `0x02` = AWM+FMX)
  - 1 byte favourite flag (`0x00` = unset, `0x01` = set)
  - 1 byte of attribute bits:
      - `0x01` = SSS is unavailable (more than eight parts)
      - `0x02` = single part performance
      - `0x04` = arpeggiator enabled
      - `0x08` = motion sequencer enabled
      - `0x10` = one or more monophonic parts
      - `0x20`, `0x40`, `0x80` are unused
  - 2 bytes category bitmask

One or more bits are set in the category bitmask corresponding to the
categories of parts contained in the performance: `0x0001` = Piano, `0x0002`
= Keyboard, `0x0004` = Organ, etc.

The zero-terminated name string contains the category and subcategory of the
first part as a decimal integer followed by a ':' and the name of that part,
for example "`66:FM Hybrid Bass`". This is identical to the _category:name_
string in the performance data for that part.

The zero-terminated title string contains the unprefixed name of the
performance itself, for example "`FM Hybrid Bass`". Both this name and the
part names are sometimes padded to a length of 20 bytes with space
characters `0x20`, but the instrument itself doesn't do this.

These are followed by zero or more 32-bit program numbers of non-preset
waveforms used by the performance.


## Waveforms ("EWFM" and "EWIM")

The are two types of entry list for waveforms. "`EWFM`" and "`DWFM`" blocks
contain the (small) waveform metadata, whereas "`EWIM`" and "`DWIM`" blocks
contain the corresponding (large) wave data itself.

Waveform program numbers have the usual bank number in the most-significant
16-bits, and a number between `0x0001` and `0x0400` in the least significant
16-bits. Waveform `0x0000` is reserved for empty elements, so for example
the first and second user waveforms are `0x00010001` and `0x00010002`.

The six flag bytes are apparently unused apart from byte 3 which contains
the favourite flag: `0x00` = unset, `0x01` = set.


## System settings ("ESYS")

This list has a single entry numbered `0x00000000` and named "`System`",
containing all the settings.


## Favourites ("EFVT")

Although there is a favourite flag in the performance and waveform entry
lists, users need to be able to mark preset and library items as favourites
without modifying the original. Favourite lists encapsulate this information
in an X7U user or X7A backup file. There is one entry for each list type,
named "`PerformanceFavorite`" and "`WaveformFavorite`" respectively.


## Patterns, pattern chains and songs ("EPAT", "EPCH" and "ESNG")

Songs and patterns are stored globally, not in user or library banks. As a
result, they are only exported in X7A backup files, not X7U user files,
which often catches out users. However, they are numbered as though they
live in the user bank: `0x00010000`, `0x00010001`, etc.


## Contact

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.