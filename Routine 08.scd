// Requires orchestra MIDI instruments (Welcome to the Machine Orchestra.scd)

(
"functions/helpers.scd".loadRelative;

~r1 = Routine({
  "💿 Start".postln;

  1 name: "marimba" chan: 10 dur: 0.25 degree: 0 amp: 1 degree: \rand scale: \minor length: 7 amp: 0.3 root: 1;
  2 name: "xilofon" chan: 15 dur: 0.25 degree: 0 amp: 1 degree: \rand scale: \minor length: 7 amp: 1 root: 1;
  3 name: "organ" chan: 14 dur: 0.25 degree: 0 amp: 1 degree: \rand scale: \minor length: 7 amp: 1 root: 1 in: 20;
  4 i: \henon dur: 0.25 beat: 0.7 amp: 0.7 delay: 0.2 reverb: 0.4;

  Dx.preset(\electro, 4).in.vol(0.2);

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
