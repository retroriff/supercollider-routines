(
"functions/helpers.scd".loadRelative;
Ns.loadSynth;

Routine.new({
    var event = (
        dur: 1/4,
        chord: [1, 2, 0],
        degree: [0, 1, 2, 3, 4, 5, 6].clipExtend(8).slide(3, 1).shuffle(938),
        octave: [0, 0, 0, 0, -1, -1, 0].clipExtend(8).slide(3, 1).shuffle(460),
        scale: [\default, \scriabin].wchoose([0.9, 0.1]),
        wave: \sine,
    );

    "💿 Start".postln;

    Ns new: event play: 10;
    Nfx new: \ns gverb: 0.3;

    ~wait.(16);

    Ns.set(\env, 1);
    Ns.set(\chord, [0, 1, 3]);
    // Ns.set(\degree, 1);
    Ns.set(\octave, 0);
    //
    Ns.set(\octave, [0, 0, 0, 0, -1, -1, 0].clipExtend(8).slide(3, 1).shuffle(460));
    Ns.set(\degree, [0, 1, 2, 3, 4, 5, 6].clipExtend(8).slide(3, 1).shuffle(938));

    ~wait.(16);

    Ns.set(\octave, [0, 0, 0, 0, -1, -1, 0].clipExtend(8).pyramid);

    ~wait.(16);

    Ns.set(\octave, [0, 0, 0, 0, -1, -1, 0].clipExtend(8).slide(3, 1).shuffle(460));

    ~wait.(16);

    // Px.release(name: \all);

    "🔥 End".postln;
}).play;
);


Ndef(\x).proxyspace
Ndef(\ns).release
Ndef(\ns).play
Ndef(\ns).fadeTime = 0;
Ns new: ~event;
Ns.last

1 loop: ["fm", \rand] dur: 32 amp: 0.2 reverb: 0.8