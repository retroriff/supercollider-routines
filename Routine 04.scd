(
"functions/helpers.scd".loadRelative;

Routine.new({
    "💿 Start".postln;

    707 i: \bd dur: 1 reverb: 0.2 delay: 0.1;
    707 i: \sn dur: 2 off: 1 reverb: 0.2 delay: 0.1 amp: 0.5 human: 0.1;
    707 i: \ch dur: 0.25 beat: 1 reverb: 0.2 delay: 0.1 amp: 0.3;

    1 play: ["electro/synth", \rand] amp: 0.5 dur: 0.75 length: 5 scale: \scriabin reverb: 0.3 off: 0.25 degree: 0 delay: 0.5 seed: 281;
    2 play: ["electro/synth", 0] amp: 0.6 dur: 1 scale: \scriabin reverb: 0.3 off: 0.25 degree: 0 delay: 0.5;
    6 play: ["electro/bass", 0] dur: 4 degree: 3 off: 0.5;

    707 i: \cr amp: 0.4 dur: 0 reverb: 0.2;

    ~wait.(32);

    3 play: ["electro/synth", 3] amp: 0.6 dur: 0.75 length: 5 seed: 180 scale: \scriabin reverb: 0.3 degree: [0, 3].stutter(16);

    ~wait.(16);

    4 play: ["electro/synth", 2] amp: 0.5 dur: 0.75 length: 5 seed: 180 reverb: 0.3 degree: 0;
    3 set: 1 out: 20;

    ~wait.(16);

    5 i: \303 dur: 0.25 amp: 0.4 octave: [\beat, 5] seed: 200 in: 20;

    ~wait.(28);

    808 i: \sn dur: 0.25 beat: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1] weight: 0.5 seed: 301 reverb: 0.2 delay: 0.1;

    ~wait.(4);

    \808 i: \sn;
    6 play: ["electro/bass", 0] dur: 0.25 degree: \rand beat: 1 weight: 0.3 seed: 200;

    808 i: \rs dur: 0.25 beat: 1 weight: 0.3 reverb: 0.5 seed: 628;

    ~wait.(16);

    3 play: ["electro/synth", 2] amp: 0.6 dur: 0.75 length: 5 seed: 180 scale: \scriabin reverb: 0.3 in: 8;

    ~wait.(16);

    3 set: 1 degree: [0, 3].stutter(16);

    ~wait.(16);

    3 set: 1 degree: 0;

    Px release: 10;

    "🔥 End".postln;
}).play;
);
