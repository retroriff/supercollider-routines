(
"functions/helpers.scd".loadRelative;

Px play: 5 reverb: 0.2 blp: 0.15;

~r1 = Routine({
    loop {
        var crash = [\cr, \lt, \mt, \hh].choose;
        var seed = 500.rand;
        var snare = [\cp, \sd].wchoose([0.2, 0.8]);
        var snareWeight = (3..6).wchoose([0.1, 0.1, 0.3, 0.5]) / 10;

        1 play: ["electro/bass", \rand] dur: 0.25 beat: 0.7 seed: seed;
        707 i: crash dur: 0 amp: 0.6;

        12.wait;

        707 i: snare amp: 0.6 dur: 0.25 beat: snareWeight seed: (seed + 1) in: 2;

        4.wait;

        \707 i: snare;
    };
}).play;

~r2 = Routine({
    16.wait;

    loop {
        var hihats = ["ch", "oh", "ss"].choose;
        var seed = 500.rand;

        2 play: ["707/" ++ hihats, 0] dur: 0.25 amp: 0.4 beat: 0.7 seed: seed;
        16.wait;
    };
}).play;

~r3 = Routine({
     16.wait;
     909 i: \bd dur: 1 amp: 0.6;
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
