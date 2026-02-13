(
"functions/helpers.scd".loadRelative;

~degree = [0, 1, 2, 3, 4, 5, 6].clipExtend(8).slide(3, 1).shuffle(938);
~octave = [0, 0, 0, 0, -1, -1, 0].clipExtend(8).slide(3, 1).shuffle(460);
~event = (
    dur: 1/4,
    chord: [1, 2, 0],
    degree: ~degree,
    octave: ~octave,
    scale: \scriabin,
    wave: \sine,
);

r = Routine.new({
    "💿 Start".postln;

    Sx new: ~event play: 10;
    Fx new: \sx gverb: 0.3;

    ~wait.(36);

    Sx.set(\env, 1);

    ~wait.(18);

    Sx.set(\chord, [0, 1, 3]);

    ~wait.(18);

    Sx.set(\octave, 0);

    ~wait.(18);

    Sx.set(\octave, ~octave);

    ~wait.(18);

    Sx.set(\octave, [0, 0, 0, 0, -1, -1, 0].clipExtend(8).pyramid);

    ~wait.(18);

    Sx.set(\octave, ~octave);
    Fx blp: 0.5;

    ~wait.(18);

    2 do: { |i|
        Sx.set(\degree, [0, 1, 2, 3, 4, 5, 6].clipExtend(9).shuffle);
        ~wait.(18, "🟢 Degrees Loop", i);
    };

    Sx.set(\degree, ~degree);

    ~wait.(18, "🟢 Rest");

    Sx.set(\degree, 1);

    ~wait.(18);

    2 do: { |i|
        Sx.set(\chord, 3.collect { rrand(0, 7) });
        ~wait.(18, "🟢 Chords Loop", i);
    };

    Sx.set(\chord, [2, 4, 6]);

    ~wait.(14);

    1 loop: "electro/sweep:1" dur: 4 amp: 0.4 r: -1;

    ~wait.(4, "🟢 Second Part");

    \1 loop: "electro/sweep:1";
    Sx.set(\degree, ~degree);
    Sx.set(\wave, \tri);

    ~wait.(18);

    Sx release: 10;

    "🔥 End".postln;
}).play;
);
