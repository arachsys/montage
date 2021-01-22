# [Yamaha Montage](/montage/) file format: category numbers

## Performance categories

| Number | Bitmask  | Category       | Subcategory    |
|-------:|---------:|:---------------|:---------------|
|    `0` | `0x0001` | Piano          | Acoustic       |
|    `1` |          |                | Layer          |
|    `2` |          |                | Modern         |
|    `3` |          |                | Vintage        |
|    `4` |          |                | Rock / Pop     |
|    `5` |          |                | R&B / Hip Hop  |
|    `6` |          |                | Electronic     |
|    `7` |          |                | Jazz / World   |
|    `8` |          |                | No Assign      |
|   `16` | `0x0002` | Keyboard       | Electric Piano |
|   `17` |          |                | FM Piano       |
|   `18` |          |                | Clavi          |
|   `19` |          |                | Synth          |
|   `20` |          |                | Rock / Pop     |
|   `21` |          |                | R&B / Hip Hop  |
|   `22` |          |                | Electronic     |
|   `23` |          |                | Jazz / World   |
|   `24` |          |                | No Assign      |
|   `32` | `0x0004` | Organ          | Tone Wheel     |
|   `33` |          |                | Combo          |
|   `34` |          |                | Pipe           |
|   `35` |          |                | Synth          |
|   `36` |          |                | Rock / Pop     |
|   `37` |          |                | R&B / Hip Hop  |
|   `38` |          |                | Electronic     |
|   `39` |          |                | Jazz / World   |
|   `40` |          |                | No Assign      |
|   `48` | `0x0008` | Guitar         | Acoustic       |
|   `49` |          |                | Electric Clean |
|   `50` |          |                | Distortion     |
|   `51` |          |                | Synth          |
|   `52` |          |                | Rock / Pop     |
|   `53` |          |                | R&B / Hip Hop  |
|   `54` |          |                | Electronic     |
|   `55` |          |                | Jazz / World   |
|   `56` |          |                | No Assign      |
|   `64` | `0x0010` | Bass           | Acoustic       |
|   `65` |          |                | Electric       |
|   `66` |          |                | Synth          |
|   `67` |          |                | Rock / Pop     |
|   `68` |          |                | R&B / Hip Hop  |
|   `69` |          |                | Electronic     |
|   `70` |          |                | Jazz / World   |
|   `71` |          |                | No Assign      |
|   `80` | `0x0020` | Strings        | Solo           |
|   `81` |          |                | Ensemble       |
|   `82` |          |                | Pizzicato      |
|   `83` |          |                | Synth          |
|   `84` |          |                | Rock / Pop     |
|   `85` |          |                | R&B / Hip Hop  |
|   `86` |          |                | Electronic     |
|   `87` |          |                | Jazz / World   |
|   `88` |          |                | No Assign      |
|   `96` | `0x0040` | Brass          | Solo           |
|   `97` |          |                | Ensemble       |
|   `98` |          |                | Orchestra      |
|   `99` |          |                | Synth          |
|  `100` |          |                | Rock / Pop     |
|  `101` |          |                | R&B / Hip Hop  |
|  `102` |          |                | Electronic     |
|  `103` |          |                | Jazz / World   |
|  `104` |          |                | No Assign      |
|  `112` | `0x0080` | Woodwind       | Saxophone      |
|  `113` |          |                | Flute          |
|  `114` |          |                | Woodwind       |
|  `115` |          |                | Reed / Pipe    |
|  `116` |          |                | Rock / Pop     |
|  `117` |          |                | R&B / Hip Hop  |
|  `118` |          |                | Electronic     |
|  `119` |          |                | Jazz / World   |
|  `120` |          |                | No Assign      |
|  `128` | `0x0100` | Syn Lead       | Analog         |
|  `129` |          |                | Digital        |
|  `130` |          |                | Hip Hop        |
|  `131` |          |                | Dance          |
|  `132` |          |                | Rock / Pop     |
|  `133` |          |                | R&B / Hip Hop  |
|  `134` |          |                | Electronic     |
|  `135` |          |                | Jazz / World   |
|  `136` |          |                | No Assign      |
|  `144` | `0x0200` | Pad / Choir    | Analog         |
|  `145` |          |                | Warm           |
|  `146` |          |                | Bright         |
|  `147` |          |                | Choir          |
|  `148` |          |                | Rock / Pop     |
|  `149` |          |                | R&B / Hip Hop  |
|  `150` |          |                | Electronic     |
|  `151` |          |                | Jazz / World   |
|  `152` |          |                | No Assign      |
|  `160` | `0x0400` | Syn Comp       | Analog         |
|  `161` |          |                | Digital        |
|  `162` |          |                | Decay          |
|  `163` |          |                | Hook           |
|  `164` |          |                | Rock / Pop     |
|  `165` |          |                | R&B / Hip Hop  |
|  `166` |          |                | Electronic     |
|  `167` |          |                | Jazz / World   |
|  `168` |          |                | No Assign      |
|  `176` | `0x0800` | Chromatic Perc | Mallet         |
|  `177` |          |                | Bell           |
|  `178` |          |                | Synth Bell     |
|  `179` |          |                | Pitched Drum   |
|  `180` |          |                | Rock / Pop     |
|  `181` |          |                | R&B / Hip Hop  |
|  `182` |          |                | Electronic     |
|  `183` |          |                | Jazz / World   |
|  `184` |          |                | No Assign      |
|  `192` | `0x1000` | Drum / Perc    | Drums          |
|  `193` |          |                | Percussion     |
|  `194` |          |                | Synth          |
|  `195` |          |                | Rock / Pop     |
|  `196` |          |                | R&B / Hip Hop  |
|  `197` |          |                | Electronic     |
|  `198` |          |                | Jazz / World   |
|  `199` |          |                | No Assign      |
|  `208` | `0x2000` | Sound FX       | Moving         |
|  `209` |          |                | Ambient        |
|  `210` |          |                | Nature         |
|  `211` |          |                | Sci-Fi         |
|  `212` |          |                | Rock / Pop     |
|  `213` |          |                | R&B / Hip Hop  |
|  `214` |          |                | Electronic     |
|  `215` |          |                | Jazz / World   |
|  `216` |          |                | No Assign      |
|  `224` | `0x4000` | Musical FX     | Moving         |
|  `225` |          |                | Ambient        |
|  `226` |          |                | Sweep          |
|  `227` |          |                | Hit            |
|  `228` |          |                | Rock / Pop     |
|  `229` |          |                | R&B / Hip Hop  |
|  `230` |          |                | Electronic     |
|  `231` |          |                | Jazz / World   |
|  `232` |          |                | No Assign      |
|  `240` | `0x8000` | Ethnic         | Bowed          |
|  `241` |          |                | Plucked        |
|  `242` |          |                | Struck         |
|  `243` |          |                | Blown          |
|  `244` |          |                | Rock / Pop     |
|  `245` |          |                | R&B / Hip Hop  |
|  `246` |          |                | Electronic     |
|  `247` |          |                | Jazz / World   |
|  `248` |          |                | No Assign      |
|  `256` | `0x0000` | No Assign      |                |


## Waveform categories

| Number | Category       | Subcategory |
|-------:|:---------------|:------------|
|    `0` | Piano          |             |
|   `16` | Keyboard       | Rd          |
|   `17` |                | Wr          |
|   `18` |                | FM          |
|   `19` |                | Clavi       |
|   `20` |                | Other       |
|   `32` | Organ          | ToneWheel   |
|   `33` |                | Other       |
|   `48` | Guitar         | Acoustic    |
|   `49` |                | E.Clean     |
|   `50` |                | Dist        |
|   `64` | Bass           | Acoustic    |
|   `65` |                | Electric    |
|   `66` |                | Synth       |
|   `80` | Strings        | Solo        |
|   `81` |                | Ensemble    |
|   `82` |                | Pizzicato   |
|   `96` | Brass          | Solo        |
|   `97` |                | Ensemble    |
|  `112` | Woodwind       | Sax         |
|  `113` |                | Orchestra   |
|  `114` |                | Other       |
|  `128` | Syn Lead       | Analog      |
|  `129` |                | Digital     |
|  `130` |                | Bass        |
|  `131` |                | Voice       |
|  `132` |                | Other       |
|  `144` | Pad / Choir    | Brass       |
|  `145` |                | Strings     |
|  `146` |                | Voice       |
|  `147` |                | Other       |
|  `160` | Syn Comp       | Voice       |
|  `161` |                | Stab        |
|  `162` |                | Other       |
|  `176` | Chromatic Perc | Mallet      |
|  `177` |                | Other       |
|  `192` | Drum / Perc    | Kick        |
|  `193` |                | Snare       |
|  `194` |                | HHat        |
|  `195` |                | Tom         |
|  `196` |                | Cymbal      |
|  `197` |                | PC          |
|  `198` |                | Ethnic      |
|  `208` | Sound FX       | SE          |
|  `209` |                | Scratch     |
|  `210` |                | MegaFX      |
|  `224` | Musical FX     | Ambient     |
|  `225` |                | Hit         |
|  `226` |                | FX          |
|  `227` |                | Other       |
|  `240` | Ethnic         | Bowed       |
|  `241` |                | Pluk        |
|  `242` |                | Struck      |
|  `243` |                | Blown       |
|  `256` | No Assign      |             |


## Arpeggio categories

| Number | Category            | Subcategory        |
|-------:|:--------------------|:-------------------|
|    `0` | Piano               | Rock               |
|    `1` |                     | Pop Rock           |
|    `2` |                     | Ballad             |
|    `3` |                     | Hip Hop            |
|    `4` |                     | Modern R&B         |
|    `5` |                     | Classic R&B        |
|    `6` |                     | Funk               |
|    `7` |                     | Techno / Trance    |
|    `8` |                     | House / Dance Pop  |
|    `9` |                     | D&B / Breakbeats   |
|   `10` |                     | Chillout / Ambient |
|   `11` |                     | Jazz / Swing       |
|   `12` |                     | Latin              |
|   `13` |                     | World              |
|   `14` |                     | General            |
|   `15` |                     | No Assign          |
|   `16` | Keyboard            | Rock               |
|   `17` |                     | Pop Rock           |
|   `18` |                     | Ballad             |
|   `19` |                     | Hip Hop            |
|   `20` |                     | Modern R&B         |
|   `21` |                     | Classic R&B        |
|   `22` |                     | Funk               |
|   `23` |                     | Techno / Trance    |
|   `24` |                     | House / Dance Pop  |
|   `25` |                     | D&B / Breakbeats   |
|   `26` |                     | Chillout / Ambient |
|   `27` |                     | Jazz / Swing       |
|   `28` |                     | Latin              |
|   `29` |                     | World              |
|   `30` |                     | General            |
|   `31` |                     | No Assign          |
|   `32` | Organ               | Rock               |
|   `33` |                     | Pop Rock           |
|   `34` |                     | Ballad             |
|   `35` |                     | Hip Hop            |
|   `36` |                     | Modern R&B         |
|   `37` |                     | Classic R&B        |
|   `38` |                     | Funk               |
|   `39` |                     | Techno / Trance    |
|   `40` |                     | House / Dance Pop  |
|   `41` |                     | D&B / Breakbeats   |
|   `42` |                     | Chillout / Ambient |
|   `43` |                     | Jazz / Swing       |
|   `44` |                     | Latin              |
|   `45` |                     | World              |
|   `46` |                     | General            |
|   `47` |                     | No Assign          |
|   `48` | Guitar              | Rock               |
|   `49` |                     | Pop Rock           |
|   `50` |                     | Ballad             |
|   `51` |                     | Hip Hop            |
|   `52` |                     | Modern R&B         |
|   `53` |                     | Classic R&B        |
|   `54` |                     | Funk               |
|   `55` |                     | Techno / Trance    |
|   `56` |                     | House / Dance Pop  |
|   `57` |                     | D&B / Breakbeats   |
|   `58` |                     | Chillout / Ambient |
|   `59` |                     | Jazz / Swing       |
|   `60` |                     | Latin              |
|   `61` |                     | World              |
|   `62` |                     | General            |
|   `63` |                     | No Assign          |
|   `64` | Bass                | Rock               |
|   `65` |                     | Pop Rock           |
|   `66` |                     | Ballad             |
|   `67` |                     | Hip Hop            |
|   `68` |                     | Modern R&B         |
|   `69` |                     | Classic R&B        |
|   `70` |                     | Funk               |
|   `71` |                     | Techno / Trance    |
|   `72` |                     | House / Dance Pop  |
|   `73` |                     | D&B / Breakbeats   |
|   `74` |                     | Chillout / Ambient |
|   `75` |                     | Jazz / Swing       |
|   `76` |                     | Latin              |
|   `77` |                     | World              |
|   `78` |                     | General            |
|   `79` |                     | No Assign          |
|   `80` | Strings             | Rock               |
|   `81` |                     | Pop Rock           |
|   `82` |                     | Ballad             |
|   `83` |                     | Hip Hop            |
|   `84` |                     | Modern R&B         |
|   `85` |                     | Classic R&B        |
|   `86` |                     | Funk               |
|   `87` |                     | Techno / Trance    |
|   `88` |                     | House / Dance Pop  |
|   `89` |                     | D&B / Breakbeats   |
|   `90` |                     | Chillout / Ambient |
|   `91` |                     | Jazz / Swing       |
|   `92` |                     | Latin              |
|   `93` |                     | World              |
|   `94` |                     | General            |
|   `95` |                     | No Assign          |
|   `96` | Brass               | Rock               |
|   `97` |                     | Pop Rock           |
|   `98` |                     | Ballad             |
|   `99` |                     | Hip Hop            |
|  `100` |                     | Modern R&B         |
|  `101` |                     | Classic R&B        |
|  `102` |                     | Funk               |
|  `103` |                     | Techno / Trance    |
|  `104` |                     | House / Dance Pop  |
|  `105` |                     | D&B / Breakbeats   |
|  `106` |                     | Chillout / Ambient |
|  `107` |                     | Jazz / Swing       |
|  `108` |                     | Latin              |
|  `109` |                     | World              |
|  `110` |                     | General            |
|  `111` |                     | No Assign          |
|  `112` | Woodwind            | Rock               |
|  `113` |                     | Pop Rock           |
|  `114` |                     | Ballad             |
|  `115` |                     | Hip Hop            |
|  `116` |                     | Modern R&B         |
|  `117` |                     | Classic R&B        |
|  `118` |                     | Funk               |
|  `119` |                     | Techno / Trance    |
|  `120` |                     | House / Dance Pop  |
|  `121` |                     | D&B / Breakbeats   |
|  `122` |                     | Chillout / Ambient |
|  `123` |                     | Jazz / Swing       |
|  `124` |                     | Latin              |
|  `125` |                     | World              |
|  `126` |                     | General            |
|  `127` |                     | No Assign          |
|  `128` | Syn Lead            | Rock               |
|  `129` |                     | Pop Rock           |
|  `130` |                     | Ballad             |
|  `131` |                     | Hip Hop            |
|  `132` |                     | Modern R&B         |
|  `133` |                     | Classic R&B        |
|  `134` |                     | Funk               |
|  `135` |                     | Techno / Trance    |
|  `136` |                     | House / Dance Pop  |
|  `137` |                     | D&B / Breakbeats   |
|  `138` |                     | Chillout / Ambient |
|  `139` |                     | Jazz / Swing       |
|  `140` |                     | Latin              |
|  `141` |                     | World              |
|  `142` |                     | General            |
|  `143` |                     | No Assign          |
|  `144` | Pad / Choir         | Rock               |
|  `145` |                     | Pop Rock           |
|  `146` |                     | Ballad             |
|  `147` |                     | Hip Hop            |
|  `148` |                     | Modern R&B         |
|  `149` |                     | Classic R&B        |
|  `150` |                     | Funk               |
|  `151` |                     | Techno / Trance    |
|  `152` |                     | House / Dance Pop  |
|  `153` |                     | D&B / Breakbeats   |
|  `154` |                     | Chillout / Ambient |
|  `155` |                     | Jazz / Swing       |
|  `156` |                     | Latin              |
|  `157` |                     | World              |
|  `158` |                     | General            |
|  `159` |                     | No Assign          |
|  `160` | Syn Comp            | Rock               |
|  `161` |                     | Pop Rock           |
|  `162` |                     | Ballad             |
|  `163` |                     | Hip Hop            |
|  `164` |                     | Modern R&B         |
|  `165` |                     | Classic R&B        |
|  `166` |                     | Funk               |
|  `167` |                     | Techno / Trance    |
|  `168` |                     | House / Dance Pop  |
|  `169` |                     | D&B / Breakbeats   |
|  `170` |                     | Chillout / Ambient |
|  `171` |                     | Jazz / Swing       |
|  `172` |                     | Latin              |
|  `173` |                     | World              |
|  `174` |                     | General            |
|  `175` |                     | No Assign          |
|  `176` | Chromatic Perc      | Rock               |
|  `177` |                     | Pop Rock           |
|  `178` |                     | Ballad             |
|  `179` |                     | Hip Hop            |
|  `180` |                     | Modern R&B         |
|  `181` |                     | Classic R&B        |
|  `182` |                     | Funk               |
|  `183` |                     | Techno / Trance    |
|  `184` |                     | House / Dance Pop  |
|  `185` |                     | D&B / Breakbeats   |
|  `186` |                     | Chillout / Ambient |
|  `187` |                     | Jazz / Swing       |
|  `188` |                     | Latin              |
|  `189` |                     | World              |
|  `190` |                     | General            |
|  `191` |                     | No Assign          |
|  `192` | Drum / Perc         | Rock               |
|  `193` |                     | Pop Rock           |
|  `194` |                     | Ballad             |
|  `195` |                     | Hip Hop            |
|  `196` |                     | Modern R&B         |
|  `197` |                     | Classic R&B        |
|  `198` |                     | Funk               |
|  `199` |                     | Techno / Trance    |
|  `200` |                     | House / Dance Pop  |
|  `201` |                     | D&B / Breakbeats   |
|  `202` |                     | Chillout / Ambient |
|  `203` |                     | Jazz / Swing       |
|  `204` |                     | Latin              |
|  `205` |                     | World              |
|  `206` |                     | General            |
|  `207` |                     | No Assign          |
|  `208` | Sound FX            | Rock               |
|  `209` |                     | Pop Rock           |
|  `210` |                     | Ballad             |
|  `211` |                     | Hip Hop            |
|  `212` |                     | Modern R&B         |
|  `213` |                     | Classic R&B        |
|  `214` |                     | Funk               |
|  `215` |                     | Techno / Trance    |
|  `216` |                     | House / Dance Pop  |
|  `217` |                     | D&B / Breakbeats   |
|  `218` |                     | Chillout / Ambient |
|  `219` |                     | Jazz / Swing       |
|  `220` |                     | Latin              |
|  `221` |                     | World              |
|  `222` |                     | General            |
|  `223` |                     | No Assign          |
|  `224` | Musical FX          | Rock               |
|  `225` |                     | Pop Rock           |
|  `226` |                     | Ballad             |
|  `227` |                     | Hip Hop            |
|  `228` |                     | Modern R&B         |
|  `229` |                     | Classic R&B        |
|  `230` |                     | Funk               |
|  `231` |                     | Techno / Trance    |
|  `232` |                     | House / Dance Pop  |
|  `233` |                     | D&B / Breakbeats   |
|  `234` |                     | Chillout / Ambient |
|  `235` |                     | Jazz / Swing       |
|  `236` |                     | Latin              |
|  `237` |                     | World              |
|  `238` |                     | General            |
|  `239` |                     | No Assign          |
|  `240` | Ethnic              | Rock               |
|  `241` |                     | Pop Rock           |
|  `242` |                     | Ballad             |
|  `243` |                     | Hip Hop            |
|  `244` |                     | Modern R&B         |
|  `245` |                     | Classic R&B        |
|  `246` |                     | Funk               |
|  `247` |                     | Techno / Trance    |
|  `248` |                     | House / Dance Pop  |
|  `249` |                     | D&B / Breakbeats   |
|  `250` |                     | Chillout / Ambient |
|  `251` |                     | Jazz / Swing       |
|  `252` |                     | Latin              |
|  `253` |                     | World              |
|  `254` |                     | General            |
|  `255` |                     | No Assign          |
|  `271` | No Assign           |                    |
|  `272` | Control / HybridSeq | Comb               |
|  `273` |                     | Zone Velocity      |
|  `274` |                     | Zone Vel for Pad   |
|  `275` |                     | Filter             |
|  `276` |                     | Expression         |
|  `277` |                     | Pan                |
|  `278` |                     | Modulation         |
|  `279` |                     | Pitch Bend         |
|  `280` |                     | Assign 1/2         |
|  `286` |                     | General            |
|  `287` |                     | No Assign          |


## Contact

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.
