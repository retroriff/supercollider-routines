(
"functions/helpers.scd".loadRelative;

Routine.new({
    "💿 Start".postln;

    707 i: \bd dur: 1 reverb: 0.2 delay: 0.1;
    707 i: \sn dur: 2 off: 1 reverb: 0.2 delay: 0.1 amp: 0.5 human: 0.1;
    707 i: \ch dur: 0.25 beat: 1 reverb: 0.2 delay: 0.1 amp: 0.3;

    1 play: ["electro/synth", \rand] amp: 0.7 dur: 0.75 length: 5 scale: \scriabin reverb: 0.3 off: 0.25 degree: 0 delay: 0.5;
    2 play: ["electro/synth", 0] amp: 0.7 dur: 1 scale: \scriabin reverb: 0.3 off: 0.25 degree: 0 delay: 0.5 hpf: 0.2 in: 10;

    ~wait.(32);

    3 play: ["electro/synth", 3] amp: 0.5 dur: 0.75 length: 5 seed: 180 scale: \scriabin reverb: 0.3 degree: [0, 3].stutter(16);

    ~wait.(16);

    3 set: 1 out: 20;

    ~wait.(16);

    4 play: ["electro/synth", 2] amp: 0.5 dur: 0.75 length: 5 seed: 180 reverb: 0.3 degree: 0;
    3 set: 1 out: 20;

    ~wait.(16);

    5 i: \303 dur: 0.25 amp: 0.4 octave: [\beat, 5] seed: 200 in: 20;
    6 play: ["electro/bass", 0] dur: 4 degree: 3 off: 0.5;

    ~wait.(28);

    707 i: \sn amp: 0.4 dur: 0.25 beat: 1 weight: 0.5 seed: 301 reverb: 0.2 delay: 0.1;

    ~wait.(4);

    707 i: \sn dur: 2 off: 1 reverb: 0.2 delay: 0.1 amp: 0.5 human: 0.1;
    6 play: ["electro/bass", 0] dur: 0.25 degree: \rand beat: 1 weight: 0.3 seed: 200;

    808 i: \rs dur: 0.25 beat: 1 weight: 0.3 reverb: 0.5 seed: 628;

    "🔥 End".postln;
}).play;
);
