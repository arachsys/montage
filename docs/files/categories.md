# [Yamaha Montage](/montage/) file format: category numbers

## Performance categories

| Number | Bitmask  | Category       | Subcategory    |
|-------:|---------:|:---------------|:---------------|
|    `0` | `0x0001` | Piano          | Acoustic       |
|    `1` |          |                | Layer          |
|    `2` |          |                | Modern         |
|    `3` |          |                | Vintage        |
|    `4` |          |                | Rock/Pop       |
|    `5` |          |                | R&B/Hip Hop    |
|    `6` |          |                | Electronic     |
|    `7` |          |                | Jazz/World     |
|    `8` |          |                | No Assign      |
|   `16` | `0x0002` | Keyboard       | Electric Piano |
|   `17` |          |                | FM Piano       |
|   `18` |          |                | Clavi          |
|   `19` |          |                | Synth          |
|   `20` |          |                | Rock/Pop       |
|   `21` |          |                | R&B/Hip Hop    |
|   `22` |          |                | Electronic     |
|   `23` |          |                | Jazz/World     |
|   `24` |          |                | No Assign      |
|   `32` | `0x0004` | Organ          | Tone Wheel     |
|   `33` |          |                | Combo          |
|   `34` |          |                | Pipe           |
|   `35` |          |                | Synth          |
|   `36` |          |                | Rock/Pop       |
|   `37` |          |                | R&B/Hip Hop    |
|   `38` |          |                | Electronic     |
|   `39` |          |                | Jazz/World     |
|   `40` |          |                | No Assign      |
|   `48` | `0x0008` | Guitar         | Acoustic       |
|   `49` |          |                | Electric Clean |
|   `50` |          |                | Distortion     |
|   `51` |          |                | Synth          |
|   `52` |          |                | Rock/Pop       |
|   `53` |          |                | R&B/Hip Hop    |
|   `54` |          |                | Electronic     |
|   `55` |          |                | Jazz/World     |
|   `56` |          |                | No Assign      |
|   `64` | `0x0010` | Bass           | Acoustic       |
|   `65` |          |                | Electric       |
|   `66` |          |                | Synth          |
|   `67` |          |                | Rock/Pop       |
|   `68` |          |                | R&B/Hip Hop    |
|   `69` |          |                | Electronic     |
|   `70` |          |                | Jazz/World     |
|   `71` |          |                | No Assign      |
|   `80` | `0x0020` | Strings        | Solo           |
|   `81` |          |                | Ensemble       |
|   `82` |          |                | Pizzicato      |
|   `83` |          |                | Synth          |
|   `84` |          |                | Rock/Pop       |
|   `85` |          |                | R&B/Hip Hop    |
|   `86` |          |                | Electronic     |
|   `87` |          |                | Jazz/World     |
|   `88` |          |                | No Assign      |
|   `96` | `0x0040` | Brass          | Solo           |
|   `97` |          |                | Ensemble       |
|   `98` |          |                | Orchestra      |
|   `99` |          |                | Synth          |
|  `100` |          |                | Rock/Pop       |
|  `101` |          |                | R&B/Hip Hop    |
|  `102` |          |                | Electronic     |
|  `103` |          |                | Jazz/World     |
|  `104` |          |                | No Assign      |
|  `112` | `0x0080` | Woodwind       | Saxophone      |
|  `113` |          |                | Flute          |
|  `114` |          |                | Woodwind       |
|  `115` |          |                | Reed / Pipe    |
|  `116` |          |                | Rock/Pop       |
|  `117` |          |                | R&B/Hip Hop    |
|  `118` |          |                | Electronic     |
|  `119` |          |                | Jazz/World     |
|  `120` |          |                | No Assign      |
|  `128` | `0x0100` | Syn Lead       | Analog         |
|  `129` |          |                | Digital        |
|  `130` |          |                | Hip Hop        |
|  `131` |          |                | Dance          |
|  `132` |          |                | Rock/Pop       |
|  `133` |          |                | R&B/Hip Hop    |
|  `134` |          |                | Electronic     |
|  `135` |          |                | Jazz/World     |
|  `136` |          |                | No Assign      |
|  `144` | `0x0200` | Pad/Choir      | Analog         |
|  `145` |          |                | Warm           |
|  `146` |          |                | Bright         |
|  `147` |          |                | Choir          |
|  `148` |          |                | Rock/Pop       |
|  `149` |          |                | R&B/Hip Hop    |
|  `150` |          |                | Electronic     |
|  `151` |          |                | Jazz/World     |
|  `152` |          |                | No Assign      |
|  `160` | `0x0400` | Syn Comp       | Analog         |
|  `161` |          |                | Digital        |
|  `162` |          |                | Decay          |
|  `163` |          |                | Hook           |
|  `164` |          |                | Rock/Pop       |
|  `165` |          |                | R&B/Hip Hop    |
|  `166` |          |                | Electronic     |
|  `167` |          |                | Jazz/World     |
|  `168` |          |                | No Assign      |
|  `176` | `0x0800` | Chromatic Perc | Mallet         |
|  `177` |          |                | Bell           |
|  `178` |          |                | Synth Bell     |
|  `179` |          |                | Pitched Drum   |
|  `180` |          |                | Rock/Pop       |
|  `181` |          |                | R&B/Hip Hop    |
|  `182` |          |                | Electronic     |
|  `183` |          |                | Jazz/World     |
|  `184` |          |                | No Assign      |
|  `192` | `0x1000` | Drum/Perc      | Drums          |
|  `193` |          |                | Percussion     |
|  `194` |          |                | Synth          |
|  `195` |          |                | Rock/Pop       |
|  `196` |          |                | R&B/Hip Hop    |
|  `197` |          |                | Electronic     |
|  `198` |          |                | Jazz/World     |
|  `199` |          |                | No Assign      |
|  `208` | `0x2000` | Sound FX       | Moving         |
|  `209` |          |                | Ambient        |
|  `210` |          |                | Nature         |
|  `211` |          |                | Sci-Fi         |
|  `212` |          |                | Rock/Pop       |
|  `213` |          |                | R&B/Hip Hop    |
|  `214` |          |                | Electronic     |
|  `215` |          |                | Jazz/World     |
|  `216` |          |                | No Assign      |
|  `224` | `0x4000` | Musical FX     | Moving         |
|  `225` |          |                | Ambient        |
|  `226` |          |                | Sweep          |
|  `227` |          |                | Hit            |
|  `228` |          |                | Rock/Pop       |
|  `229` |          |                | R&B/Hip Hop    |
|  `230` |          |                | Electronic     |
|  `231` |          |                | Jazz/World     |
|  `232` |          |                | No Assign      |
|  `240` | `0x8000` | Ethnic         | Bowed          |
|  `241` |          |                | Plucked        |
|  `242` |          |                | Struck         |
|  `243` |          |                | Blown          |
|  `244` |          |                | Rock/Pop       |
|  `245` |          |                | R&B/Hip Hop    |
|  `246` |          |                | Electronic     |
|  `247` |          |                | Jazz/World     |
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
|  `144` | Pad/Choir      | Brass       |
|  `145` |                | Strings     |
|  `146` |                | Voice       |
|  `147` |                | Other       |
|  `160` | Syn Comp       | Voice       |
|  `161` |                | Stab        |
|  `162` |                | Other       |
|  `176` | Chromatic Perc | Mallet      |
|  `177` |                | Other       |
|  `192` | Drum/Perc      | Kick        |
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


## Contact

Please send any questions, corrections or other contributions to
Chris Webb \<[chris@arachsys.com](mailto:chris@arachsys.com)>.
