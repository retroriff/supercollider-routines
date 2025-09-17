// Requires orchestra MIDI instruments (Pulse Orchestra.scd)

(
"functions/helpers.scd".loadRelative;

~r1 = Routine({
  "💿 Start".postln;

  1 chan: 0 name: "marimba" dur: 0.25 amp: 0.4 degree: \rand scale: \minor length: 3 root: 4 in: 20;

  ~wait.(16);

  2 chan: 1 name: "xilofon" dur: 0.25 degree: \rand scale: \minor length: 3 root: 4 in: 20;

  ~wait.(32);

  3 chan: 2 name: "organ" dur: 0.25 degree: \rand scale: \minor length: 7 root: 4 in: 20;

  ~wait.(32);

  4 chan: 3 name: "triangle" dur: 0.25 degree: \rand octave: 4 scale: \minor length: 5 in: 20;
  5 chan: 4 name: "strings" hold: 1 degree: 2 octave: 3 in: 20;

  ~wait.(128);

  6 chan: 4 name: "strings" dur: Prand([1, 2], inf) degree: \rand scale: \minor length: 8 octave: 4 root: 4 pan: \rand solo: 1;

  ~wait.(32);

  6 chan: 4 name: "strings" dur: Prand([1, 2], inf) degree: \rand scale: \minor length: 8 octave: 4 root: 4 pan: \rand;
  \6 chan: 4 name: "strings";

  ~wait.(32);

  6 chan: 4 set: 1 out: 20;

}).play;

~r2 = Routine({
  ~wait.(32 * 3);

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
