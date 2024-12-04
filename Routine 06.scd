(
"functions/helpers.scd".loadRelative;
Px.last = Dictionary.new;
Px.ndefList = Dictionary.new;
Ndef(\px).clear;
Px.play reverb: 0.2 blp: 0.2;

~r1 = Routine({
    loop {
        var seed = 500.rand;
        1 play: ["electro/bass", \rand] amp: 0.8 dur: 0.25 beat: 1 seed: seed;
        707 i: \cr dur: 0 amp: 0.5;
        707 i: \ch dur: 0.25 amp: 0.2 beat: 1 weight: 0.4 seed: (seed + 1);

        12.wait;
        707 i: \sn dur: 0.25 beat: 1 amp: 0.4 weight: 0.6 seed: (seed + 2);

        4.wait;
        \707 i:\sn;
    };
});

~r2 = Routine({
    16.wait;
    909 i: \bd dur: 1;
});

~r3 = Routine({
    16.wait;
    Ns new: (\amp: 0.5, \dur: 0.25, \wave: \saw) play: 3;

    loop {
        var chord = 3.collect { rrand(0, 7) };
        Ns.qset(\chord, chord);
        16.wait;
    };
});

~r1.play;
~r2.play;
~r3.play;
)
