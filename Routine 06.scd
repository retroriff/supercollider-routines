(
"functions/helpers.scd".loadRelative;

r = Routine.new({
    "💿 Start".postln;

    \1 play: ["kplus", \rand] dur: 0.25 beat: 1 weight: 0.5 amp: 0.5 reverb: 0.5 seed: 25;
    \2 play: ["kplus", \rand] dur: 0.5 euclid: [3, 5] amp: 0.5 reverb: 0.5 off: 0.5 degree: \rand length: 3 scale: \iwato seed: 27;
    3 loop: ["pop-2", 0] amp: 0.6;
    4 play: ["electro/bass", \rand] dur: 0.5 euclid: [3, 5] amp: 0.7 reverb: 0.2 off: 0.5 degree: \rand length: 3 scale: \iwato seed: 54 out: 20;
    707 i: \bd dur: 1 amp: 0.5 delay: 0 r: 1;
    707 i: \oh dur: 0.25 amp: 0.4 beat: 1;
    707 i: \ss dur: 0.25 amp: 0.3 beat: 1;
    Px blp: 0.4;
    5 play: ["rave", 0] dur: 0.25 euclid: [3, 5] amp: 0.7 reverb: 0.4 out: 20;
    6 play: ["rave", 1] dur: 0.25 beat: 1 weight: 0.3 amp: 0.8 reverb: 0.6;

    707 i: \cr dur: 0 amp: 0.2
    777 play: ["electro/sweep", 1] dur: 0 amp: 0.4

    ~wait.(16);

    "🔥 End".postln;
}).play;
);


Px.release(name: \all)


Ns.play
Ndef(\ns).vol_(0.5)
Ns.set(\dur, 0.25)
Ns.set(\chord, [0, 1, 5])
Ns.set(\degree, [0, 1, 2, 3, 2, 1, 4].clipExtend(8).slide(3, 1).shuffle(201))
Ns.set(\octave, [0, 0, -1, 0, -1, 0, 0].clipExtend(8).slide(3, 1).shuffle)
Ns.set(\scale, \iwato)
Ns.set(\wave, \saw)
Ns.set(\env, 1)

Nfx(\ns).gverb(0.5)

\ns out: 30