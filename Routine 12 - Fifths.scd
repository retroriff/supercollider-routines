/*
- Com fet un beat amb duració limitada
*/

Nx.fifth(\C, 4, \rand)

Nx.fifth(\C, \rand)
s.release

Nx.fifth(\C, (-2..2).choose, \minor).chord
Nx.fifthChords.keys

Nx.fifth(\C, (-2..2).choose, \minor).chord;
Nx.fifthChords
Nx.chord
Nx.chord
Hush()

Nx.intervals
Nx.chord
Nx.fifth(\C, 0, \hexSus)
Dx.use(\EmuSP12);
Px.synthDef(\rhodes)

Sx.stop

Nx.set(\EmAdd9)

Nx.midinotes;
\m12.flanger(1);

Sx((\chord: Nx.shuffle.chord, \wave: \saw, \amp: 0.6, \atk: 5, \rel: 10));

Nx.shuffle;

Nx.fifth(2);



Nx(\Am, 3);
Nx.shuffle
(
Nx.fifth(\C, Pxrand((-2..2), inf).asStream.next, \dim);
~playChord.(Nx.chord);
Sx((\pad: Nx.chord, \atk: 7, \rel: 10, \wave: \saw, \amp: 0.6)).vol(0.57);
// \m32.set(\em, Nx.midinotes);
// \m02.set(\intervals, a.intervals);
1 i: \rhodes dur: 0.25 note: Nx.midinotes.pseq octave: 0 amp: 0.1 modIndex: 1 mix: 1;
2 i: \rhodes dur: 4 degree: Nx.degrees[0] scale: Nx.scale root: Nx.root octave: -2 amp: 0.4;
2 i: \rhodes dur: 4 note: Nx.midinotes[0] octave: -2 amp: 0.4;
3 i: \wobble dur: 0.5 note: Nx.midinotes.pseq amp: 0.1 pan: \rotate wfhi: 6;
)


2 play: "breath" dur: 8 amp: 0.4 rest: 4;
3 play: "breath:1" dur: 8 amp: 0.5 rest: 4 off: 4;

Nx.intervals

1 i: \wobble dur: 0.5 note: Nx.midinotes.slide(1, 2).pseq octave: [-2, -1] amp: 0.3 wfhi: 6;


Px.clear

909 i: \bd dur: 1 amp: 0.4;

Dx.solo(\sd)
Dx.gui

808 set: \sd beat: 0.6 seed: \rand
808 i: \sd amp: 0.4 dur: 2 off: 1;

Px.last[\sd808]
Px.last.keys
Dx.use(\909).preset(\core, 1)
Dx.fill;
Dx.shuffle;
Dx.use(\MoogConcertMateMG1)
Px.last[\bdMoogConcertMateMG1].keys
Dx.gui
Dx.drumMachine


909 i: \sd amp: 0.3 dur: 0.25 beat: 0.6 seed: \rand repeat: 1 callback: Pfunc{ 909 i: \cr amp: 0.3 };

(
909 set: \sd beat: 0.6 seed: \rand;
909 i: \cr amp: 0.3 off: 4 callback: Pfunc{ 909 set: \sd beat: [ 0.0, 0.0, 0.0, 0.0, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.0, 0.0, 0.0 ] };
)

Dx.gui

Px.last[\80003]
Px.last
808 set: \sd
(
808 i: \sd dur: 1 beat: 0.5;
808 i: \hh dur: 1 fill: 0.6;
)

(
707 i: \sd dur: 0.25 beat: 0.6 amp: 0.3 seed: \rand repeat: 1;
707 i: \cr amp: 0.1 off: 4 callback: Pfunc{ Dx.preset(\core, 1) };
)


(
1
i: \wobble
amp: 0.3
dur: 0.5
iphase: Prand([0, 0.25, 0.5, 0.75], inf)
legato: 0.98
note: Nx.midinotes.slide(1, 2).pseq
octave: [-2, -1]
wflo: Prand([1, 2, 3], inf)
wfhi: Prand([4, 6, 8], inf)
wfmax: ([4, 6, 3, 1, 9] * 500).pseq
)

Px.last
Px.lastFormatted[\1]

Dx.shuffle
Dx.preset(\core, 3).vol(0.6)
Dx.solo(\sd)
Dx.loadPresets
Dx.gui
Dx.flanger(1)
Dx.reverb

s.hasBooted

707 i: \ch dur: 1

(
909 i: \sd beat: 0.6 dur: 0.25 a: 0.5 seed: \rand repeat: 1;
909 i: \cr a: 0.5;
)


\909 i: \rd fill: 0.1 dur: 0.25 a: 0.15 seed: \rand delay: 0.2 reverb: 0.2;

1 i: \rhodes dur: 0.25 degree: Nx.degrees.pseq scale: Nx.scale root: Nx.root octave: 0 amp: 0.1 modIndex: 1 mix: 1;

1 i: \rhodes dur: 0.25 note: Nx.midinotes.pseq octave: 0 amp: 0.1 modIndex: 1 mix: 1;

Px.root(54)
Px.ctranspose(0)
Px.scale(\major)
Px.chop

Px.lastFormatted[\1]
Px.lastFormatted[\1][\midinote].list
Px.lastFormatted[\1][\ctranspose].list

Px.tempo(120)
Pbind(\instrument, \wobble, \midinote, Nx.midinotes.pseq, \ctranspose, 3).play
Nx.octave(1)
Dx.solo(\sd);


Dx.preset(\electro, 5).vol(0.5);
Px.cñ

Fx(\1).blp(0.4)
Fx(\3).blp(0.3).gverb.flanger
Fx.clear
Pxrand((-2..2), inf).asStream.next

Dx.gui

Fx(\sx).flanger(1).delay.reverb(0.7);
Fx(\px).flanger(0.3).gverb(0.2);

Px.tempo(100)

1 chan: 5 dur: 0.5 note: Nx.midinotes.pseq;
(
Pdef(\def, Pbind(
  \instrument, \wobble,
  \amp, 1,
  \midinote, Pseq([ 58, 61, 65, 68 ], inf),
  \ctranspose, 0,
  \dur, 0.25,
)).play.quant(4);
)
)


(
Pdef(\def, Pbind(
  \type, \midi,
  \chan, 5,
  \midinote, Pseq([57, 60, 64], inf),
  \midicmd, \noteOn,
  \midiout, Px.midiOut,
  \amp, 1,
  \dur, 0.5,
)).play.quant(4);
)

1 chan: 5 dur: 0.5 degree: [0, 2, 4, 7].pseq scale: \minor octave: 4;

Px.lastFormatted


(
MIDIClient.init;    // if not already done

(
Pdef(\def, Pbind(
  \type, \midi,
  \chan, 5,
  \midicmd, \noteOn,
  \midiout, Px.midiOut,
  \amp, 1,
  \degree, Pseq([0, 2, 4, 7], inf),
  \dur, 0.25,
  \octave, 5,
  \scale, Scale.minor,
)).play.quant(4);
)
)