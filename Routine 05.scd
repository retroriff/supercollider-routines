(
"functions/helpers.scd".loadRelative;

Ns.loadSynth;

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

    Ns new: ~event play: 10;
    Fx new: \ns gverb: 0.3;

    ~wait.(36);

    Ns.set(\env, 1);

    ~wait.(18);

    Ns.set(\chord, [0, 1, 3]);

    ~wait.(18);

    Ns.set(\octave, 0);

    ~wait.(18);

    Ns.set(\octave, ~octave);

    ~wait.(18);

    Ns.set(\octave, [0, 0, 0, 0, -1, -1, 0].clipExtend(8).pyramid);

    ~wait.(18);

    Ns.set(\octave, ~octave);
    Fx blp: 0.5;

    ~wait.(18);

    2 do: { |i|
        Ns.set(\degree, [0, 1, 2, 3, 4, 5, 6].clipExtend(9).shuffle);
        ~wait.(18, "🟢 Degrees Loop", i);
    };

    Ns.set(\degree, ~degree);

    ~wait.(18, "🟢 Rest");

    Ns.set(\degree, 1);

    ~wait.(18);

    2 do: { |i|
        Ns.set(\chord, 3.collect { rrand(0, 7) });
        ~wait.(18, "🟢 Chords Loop", i);
    };

    Ns.set(\chord, [2, 4, 6]);

    ~wait.(14);

    1 loop: ["electro/sweep", 1] dur: 4 amp: 0.4 r: -1;

    ~wait.(4, "🟢 Second Part");

    \1 loop: ["electro/sweep", 1];
    Ns.set(\degree, ~degree);
    Ns.set(\wave, \triangle);

    ~wait.(18);

    Px release: \all;

    "🔥 End".postln;
}).play;
);

