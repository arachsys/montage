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


## MIDI messages

Some brief notes on undocumented system exclusive messages supported by the
instrument are here:

- [System exclusive messages](sysex)

Contributions to these would be gratefully received.


## File format

Montage X7U/X7L/X7A and MODX X8U/X8L/X8A file formats are reverse-engineered
and partially documented below:

- [Top-level structure](files/structure)
- [Category numbers](files/categories)
- [Example programs](https://github.com/arachsys/montage/tree/main/files)

My 2012 notes on Motif XF files are still available, and may be interesting
for comparison purposes:

- [Motif XF file format](https://gist.github.com/arachsys/2883877)

Again, corrections and additions would be gratefully received.


## Obtaining a shell

The following subdirectory of <https://github.com/arachsys/montage> has
instructions and an image build tree for launching a shell using the
firmware upgrade path in the instrument's initramfs.

- [Montage shell](https://github.com/arachsys/montage/tree/main/shell)

This makes tinkering a lot easier, and simple demo scripts are included to
clean up preset part names and fix some buggy preset performances.

Montage runs an antediluvian Linux kernel and armhf userspace. Even the
recent v3.50 firmware has a 3.12.10 armv7l kernel from a vendor tree tagged
as "`ti2013.12.01`", with a similarly aged glibc 2.19. To build binaries for
Montage, it may be easier to link statically than find a museum with a
sufficiently antique toolchain. This is not entirely Yamaha's fault: many
hardware manufacturers fall for SoC vendors' terrible advice to use their
'board support' abandonware instead of actively-maintained mainline kernels.


## Hardware notes

The main CPU is a Texas Intruments AM3352 (ARM Cortex-A8, 32-bit ARMv7-A
architecture) with 256MB of DDR3 SDRAM and 4GB eMMC. The USB-to-device
interface is that of the AM3352, but the USB-to-host audio/MIDI interface is
driven by a separate "SSP2" DSP containing a Renesas SH-2A core.

Tone generation and effects are handled by two large "SWP70" ASICs in a
master/slave configuration with their own SDRAM (48MB and 16MB respectively)
and 4GB of direct-connected NAND flash for wave data. The CPU, SWP70s and
SSP2 are interconnected both by the main address/data bus and also by I2S.

Embedded Linux hackers should probably think of Montage as a Beaglebone
Black with 4GB eMMC, 256MB RAM, and some exotic DSP peripherals which have
their own 4GB of flash storage for wave data.

I have a Montage 8 service manual (including schematics) and am happy to
answer questions. These can be purchased in PDF format direct from Yamaha
24x7 in the US. However, Yamaha UK Parts are less helpful, only supplying
manuals to 'authorised service engineers' to maintain a profitable but
user-hostile monopoly.


## Other information

Some additional information on electrical compatibility of controller
pedals, capturing screenshots and attaching external displays is below:

- [Foot controllers](pedals)
- [Undocumented features](extras)

The official documentation corresponding to Montage version 3.50 can be
found at:

- [Owner's manual](https://usa.yamaha.com/files/download/other_assets/7/812097/montage_en_om_b0.pdf) --- 13.3MB
- [Reference manual](https://usa.yamaha.com/files/download/other_assets/9/812529/montage_en_rm_a0.pdf) --- 17.2MB
- [Supplementary manual](https://usa.yamaha.com/files/download/other_assets/2/960092/montage_en_sm_h0.pdf) --- 4.2MB
- [Data list](https://usa.yamaha.com/files/download/other_assets/9/1341759/montage_en_dl_j0.pdf) --- 5.3MB
- [Parameter manual](https://usa.yamaha.com/files/download/other_assets/1/812531/synthesizer_en_pm_c0.pdf) --- 752kB

Firmware images can be found here:

- [Montage v3.50](https://usa.yamaha.com/files/download/software/6/1342016/montage350.zip) --- 129MB
- [Montage v3.00](https://usa.yamaha.com/files/download/software/8/1302698/montage300-2.zip) --- 180MB


## Contact and discussion

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.

[GitHub discussions](https://github.com/arachsys/montage/discussions) are
also enabled for this repository to provide a more public forum to chat
about Montage from a technical perspective.
