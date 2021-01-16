# [Yamaha Montage](/montage/): foot controllers

## Input characteristics

Montage has four foot controller inputs, three of which support continuous
control.

The assignable switch input only supports a normally-closed switch on a
6.35mm TS jack, grounding S and reading T with a 10kΩ pull-up. The other
three inputs expect a potential divider connected via a 6.35mm TRS jack. The
sleeve S is grounded, the tip T is driven positive, and an output voltage is
read from the ring R.

Both foot controller inputs ground S directly and drive T with 3.3V and 220Ω
output impedance, reading the divider voltage from R with a high-impedance
input. Higher R voltages correspond to higher controller values linearly.

The sustain input is a slight variation that works with a normally-closed
switch on a TS jack as well as a TRS voltage divider. It grounds S via 1kΩ,
drives T with 3.3V via 23.5Ω, and reads the divider voltage R with a 100kΩ
pull-down. Higher R voltages correspond to lower sustain controller values
linearly. With a switch on a TS jack, R and S are shorted together. They are
therefore both pulled low when the switch is open and both forced high when
it is closed.

A wide range of linear pots in the 10kΩ to 50kΩ range are compatible with
these inputs because of the low source impedance and high input impedance.
See the DJK 001 circuit diagram on page 133 of the Montage 8 Service Manual
for the full details of the inputs including insertion detection.


## Yamaha pedals

Both the FC4 and FC5 pedals are simple normally-closed switches on a TS
jack.

The FC7 pedal houses a 50kΩ divider, whose output R is linear with angular
deflection. The TR resistance falls and the RS resistance rises as the pedal
moves from the heel-down position to the toe-down position.

There is confusion online about the transfer function of this pedal, but the
pot is visibly marked as linear ('B') not log taper ('A'). This linearity is
easy to confirm: energise the pedal and observe that 50% output voltage
occurs at the mid-point of the available angular range. The 50kΩ pot does
result in an unusually high and variable impedance output, so the response
will be distorted if driving a low impedance input.

The FC3 sustain pedal is a 10kΩ divider, again with linear response, but
with an additional series 1.5kΩ on the output R. The TR resistance rises and
the RS resistance falls as the pedal is depressed. The fixed 1.5kΩ extra
output impedance on the FC3 is negligible when driving the 100kΩ+ Montage
inputs; perhaps it is needed for compatibility with other Yamaha products?

Presumably the newer FC3A pedal is electrically identical to the FC3, but I
would be interested to hear confirmation of this.


## Notes

The assignable switch destination is set globally in _Utility -> Settings ->
MIDI IO_. The foot controller destinations are set for each Performance in
_Edit -> Control -> Control Number_. The sustain input always generates the
standard hold controller 64.

An FC3 sustain pedal can be plugged into the foot controller inputs as well
as the sustain input. The controller value will normally sit at 100%,
smoothly falling to zero as the pedal is depressed and rising back up again
on release. Swapping the sleeve and tip connections reverses this, which is
handy for non-sustain applications where a momentary pedal is needed.

Similarly, an FC7 pedal can be used with the sustain input. Hold is fully on
at the heel-down position, varying smoothly with the pedal until it is fully
off at the toe-down position. This is probably not useful.

When adapting third-party continuous controllers to the Montage, first check
that the voltage response is linear not logarithmic or reverse-logarithmic,
as replacing a pot is more fiddly. Given a linear voltage-divider, wire the
output to the ring and the power rails to the tip and sleeve in the order
that gives the desired control direction.

None of the inputs are robustly protected against abuse, although they are
diode-clamped before hitting the ADC on the PNL board. It might be wise to
carefully isolate them if driving from active electronics.


## Contact

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.
