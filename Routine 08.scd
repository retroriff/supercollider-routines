// Requires orchestra MIDI instruments (Welcome to the Machine Orchestra.scd)

(
"functions/helpers.scd".loadRelative;

~r1 = Routine({
  "💿 Start".postln;

  1 chan: 10 name: "marimba" dur: 0.25 amp: 0.4 degree: \rand scale: \minor length: 7 root: 4;
  2 chan: 15 name: "xilofon" dur: 0.25 degree: \rand scale: \minor length: 7 root: 4;
  3 chan: 14 name: "organ" dur: 0.25 degree: \rand scale: \minor length: 7 root: 4 in: 20;
  4 chan: 6 name: "triangle" dur: 2 degree: 2 octave: 4 off: 1;
  5 i: \henon dur: 0.25 beat: 0.7 amp: 0.5 delay: 0.2 reverb: 0.4 out: 20;

  Dx.use("KorgKRZ");
  Dx.preset(\electro, 4).vol(0.17);

  ~wait.(32);

  loop {
    Px.shuffle;
    32.wait;
  };
}).play;
)

(
~scale = Scale.names.choose.asSymbol;
~scale.postln;
1 set: 1 scale: ~scale;
2 set: 1 scale: ~scale;
3 set: 1 scale: ~scale;
)
