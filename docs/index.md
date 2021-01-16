# Resources for Yamaha Montage

## MIDI tools

Several of my [Web MIDI tools](https://arachsys.github.io/webmidi/) might be
useful when working with Montage and MODX:

- [System exclusive tool](https://arachsys.github.io/webmidi/sysex) --- a
  browser-based shell for transmitting and receiving MIDI messages including
  system exclusive parameters and bulk dumps

- [Performance
  scratchpad](https://arachsys.github.io/webmidi/montage/scratchpad) --- a
  simple patch librarian which can receive, save, load and transmit
  performances to/from a MIDI-attached Montage or MODX

See the main page for instructions as the UI is quite minimal. Web MIDI
requires Chrome/Chromium or another Blink-based browser, although
Firefox/Gecko may also work with the Jazz plugin and extension.


## File formats

These notes on Motif XF files are largely still relevant for newer Montage
and MODX files, albeit needing minor changes and additions:

- [Yamaha Motif XF file format](https://gist.github.com/arachsys/2883877)

A long-overdue update of these notes and scripts for Montage is in progress.


## Obtaining a shell

The following subdirectory of <https://github.com/arachsys/montage> has
instructions and an image build tree for launching a shell using the
firmware upgrade path in the instrument's initramfs.

- [Montage shell](https://github.com/arachsys/montage/tree/main/shell)

This makes tinkering a lot easier, and simple demo scripts are included to
clean up preset part names and fix some buggy preset performances.


## Hardware notes

- [Foot controllers](pedals)

I have a Montage 8 service manual (including schematics) and am happy to
answer questions. These can be purchased in PDF format direct from Yamaha
24x7 in the US. However, Yamaha UK Parts are less helpful, only supplying
manuals to 'authorised service engineers' to maintain a profitable but
user-hostile monopoly.

## Contact

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.
