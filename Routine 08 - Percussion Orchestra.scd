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

  Px.solo(5);

  ~wait.(32);

  1 chan: 0 name: "marimba" dur: 0.25 amp: 0.4 degree: \rand scale: \minor length: 3 root: 4 in: 20;
}).play;

~r2 = Routine({
  ~wait.(32 * 3);

  loop {
    r = (r ? 0 % 3) + 1;
    Px.shuffle(r);
    32.wait;
  };
}).play;
)

(
~scale = Scale.names.choose.asSymbol;
Px.shuffle;
1 set: 1 scale: ~scale;
2 set: 1 scale: ~scale;
3 set: 1 scale: ~scale;
~scale.debug("Scale:");
)
