(
"functions/helpers.scd".loadRelative;

Px.clear;
Sx.clear;
Px play: 5 reverb: 0.2 blp: 0.15;

~r1 = Routine({
    loop {
        var crash = [\cr, \lt, \mt, \oh].choose;
        var seed = 500.rand;
        var snare = [\cp, \sn].wchoose([0.2, 0.8]);
        var snareWeight = (3..6).wchoose([0.2, 0.2, 0.2, 0.4]) / 10;

        1 play: ["electro/bass", \rand] dur: 0.25 beat: 1 seed: seed;
        707 i: crash dur: 0 amp: 0.3;

        12.wait;

        707 i: snare amp: 0.6 dur: 0.25 beat: 1 weight: snareWeight seed: (seed + 1) in: 2;

        4.wait;

        \707 i: snare;
    };
}).play;

~r2 = Routine({
    16.wait;

    loop {
        var hihats = ["ch", "oh", "ss"].choose;
        var seed = 500.rand;

        2 play: ["707/" ++ hihats, 0] dur: 0.25 amp: 0.4 beat: 1 seed: seed;
        16.wait;
    };
}).play;

~r3 = Routine({
     16.wait;
     909 i: \bd dur: 1;
}).play;

~r4 = Routine({
    12.wait;

    Sx play: 4;
    Sx.set(\amp, 0.7);
    Sx.set(\dur, 0.25);

    4.wait;

    loop {
        var wave = [\pulse, \saw, \sine, \triangle].choose;
        var chord = 3.collect { rrand(0, 7) };

        Sx.qset(\chord, chord);
        Sx.qset(\wave, wave);

        16.wait;
    };
}).play;
)
