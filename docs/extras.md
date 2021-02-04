# [Yamaha Montage](/montage/): undocumented features

## Screenshot to USB storage

On the Montage 6/7/8, hold _A/D Input On/Off_ and tap _Element/Operator
Solo_ to take a screenshot. For the MODX 6/7/8, _Audition_ takes the place
of _Element/Operator Solo_.

There is no visual or auditary feedback that anything has happened, but
8-bit 800 x 480 PNG images are written to the root directory of an attached
USB storage device as `DSNAP_0.png`, `DSNAP_1.png`, etc.


## External display

A cheap 800 x 480 resistive touch panel is a baffling choice for a
multi-thousand-pound instrument released in 2016, but even the best
integrated screen can be inconvenient for demo work or screen captures.

The `/usr/bin/daisy-start` script which initialises the synth contains the
stanza

```
if grep udlfb /proc/fb; then
  DISPLAY_OPTIONS="-display 'Multi: LinuxFb:/dev/fb0 LinuxFb:/dev/fb1'"
fi
```

where `DISPLAY_OPTIONS` is used to set the Qt QWS display device. Similarly
`QWS_MOUSE_PROTO` is set to use tslib on the `/dev/input/event*` nodes.

Thus an external display can be connected via a USB2 display adaptor
supported by the 3.12 kernel's `udlfb` driver, i.e. older DisplayLink
chipsets. Touch input also works with a bit of trial-and-error to identify a
USB touch controller supported by the supplied kernel input drivers.

It should also be possible to build driver modules for unsupported display
adaptors and touch controllers with the Yamaha-provided [kernel source
tree](https://download.yamaha.com/sourcecodes/synth/), then retrofit them
using [shell access](https://github.com/arachsys/montage/tree/main/shell).

Without an external touch controller connected, the internal panel works as
normal and can be used to operate the instrument while the screen is also
mirrored for an audience. With an external touch controller, the internal
panel goes blank.


## File format and MIDI messages

Please see the dedicated pages for information on the Montage/MODX [file
format](files/structure) and [system-exclusive messages](sysex).


## Contact

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.
