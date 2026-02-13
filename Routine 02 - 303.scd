(
"functions/helpers.scd".loadRelative;

~octave = [0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1] + 5;

Routine.new({
  "💿 Start".postln;

  1 i: \303 amp: 0.5 dur: 0.25 octave: ~octave ctf: [0.4, 1].pseg(\exp, 16) env: 0.9 res: 0.4 wave: 0;

  ~wait.(16);

  1 set: 1 ctf: 1 res: [0.4, 0].pseg(\lin, 16);

  ~wait.(16);

  1 set: 1 env: [0.9, 0.2].pseg(\exp, 16) res: 0;
  2 i: \303 dur: 0.25 amp: 0.2 octave: ~octave degree: [0, 1, 5, 3].pseq scale: \scriabin in: 16;

  ~wait.(32);

  1 set: 1 env: 0.2;
  707 i: \sd dur: 0.25 amp: [0, 0.6].pseg(\exp, 16);

  ~wait.(16, "🟢 Second part");

  1 set: 1 ctf: [0.4, 1].pseg(\exp, 16);
  707 i: \bd amp: 0.4 dur: 1;
  707 i: \cr amp: 0.4;

  ~wait.(16);

  1 set: 1 ctf: 1;
  2 set: 1 degree: [0, 1, 2, 3].pseq;

  ~wait.(8);

  2 set: 1 degree: [0, 1, 5, 3].pseq;

  ~wait.(8);

  2 set: 1 degree: [0, 1, 2, 3].pseq;

  ~wait.(8);

  2 set: 1 degree: [0, 1, 5, 3].pseq;

  ~wait.(8);

  707 i: \hh dur: 0.25 amp: [0, 0.5].pseg(\exp, 16);

  ~wait.(16);

  Px root: 3;
  707 i: \cr amp: 0.6 dur: 0;

  ~wait.(16);

  Px root: 0;
  707 i: \cr amp: 0.7 dur: 0;

  ~wait.(16, "🟢 Third part");

  1 set: 1 env: [0.9, 0.2].pseg(\lin, 16) solo: 1;
  707 i: \cr amp: 0.7 dur: 0;

  ~wait.(16);

  Px.release;

  "🔥 End".postln;
}).play;
);

\4 i: \303 dur: [0.5, 1, 2, 4, 8].pseq sus: Pkey(\dur) ctf: Pwhite(0.1, 1) env: Pwhite(0.1, 1) res: Pwhite(0.1, 1) delay: 0.2 reverb: 0.2;
