(
"functions/helpers.scd".loadRelative;

~buf = [3, 1, 0, 5, 0, 3, 5, 1];

Routine.new({
  "💿 Start".postln;

  1 play: ["electro/bass", ~buf] amp: 0.5 dur: 0.25 beat: 0.7 degree: 8 seed: 949;

  ~wait.(8);

  909 i: \sd amp: 0.5 dur: 0.25 beat: 0.6;

  ~wait.(4);

  909 i: \bd dur: 1 amp: 1;
  909 i: \sd dur: 2 amp: 0.5 off: 1 delay: 0.2;
  909 i: \hh dur: 0.25 beat: 0.6 amp: 0.5;
  909 i: \cr amp: 0.5;

  ~wait.(64);

  909 i: \sd amp: 0.3 dur: 0.25 beat: 0.6 seed: \rand;
  // 1 set: 1 beat: 1;

  "🔥 End".postln;
}).play;
);
