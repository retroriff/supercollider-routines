(
~iwatoIntervals = [0, 1, 5, 6, 10];
~eKey = 52;

Ndef(\seq, {
  var intervals, note, sig, trig, env;

  intervals = ~iwatoIntervals + ~eKey - (\octave.kr(1) * 12);

  trig = Impulse.kr(t * 4);

  note = Demand.kr(
    trig,
    0,
    Drand(intervals - 12 ++ intervals, inf)
  );

  env = EnvGen.kr(Env.perc(\atk.kr(0.1), \rel.kr(1)), trig);

  sig = BHiPass.ar(
    LFNoise1.ar(8),
    freq: [note, note + \harmonic.kr(0.2)].midicps, // harmonic = 7
    rq: note / 1000,
    mul: note
  ).tanh;

  sig * env * \amp.kr(0.2);
}).play;
)

(
"functions/helpers.scd".loadRelative;

~r = Routine.new({
  "💿 Start".postln;

  ~playPad.(~iwatoIntervals + ~eKey);
  \seq.in(16);
  909 i: \bd dur: 1 amp: 0.8 in: 16;
  909 i: \sd dur: 0.25 amp: Pwrand([0, 0.3], [0.8, 0.2], inf) in: 16;

  ~wait.(16);

  909 i: \oh dur: 0.25 amp: Pwrand([0, 0.3], [0.8, 0.2], inf) in: 16;

  ~wait.(16);

  loop {
    ~playChord.(~iwatoIntervals + ~eKey, 0.7);
    ~wait.(16);
  };
}).play;
)

