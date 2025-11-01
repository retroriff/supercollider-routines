(
Ndef(\seq, {
  var intervals, note, sig, trig, env;

  intervals = ~intervals + ~key - 12;

  trig = Impulse.kr(t * 4);

  note = Demand.kr(
    trig,
    0,
    Drand(intervals - 12 ++ intervals, inf)
  );

  env = EnvGen.kr(Env.perc(\atk.kr(0.1), \rel.kr(1)), trig);

  sig = BHiPass.ar(
    LFNoise1.ar(8),
    freq: [note, note + 0.2].midicps,
    rq: note / 1000,
    mul: note
  ).tanh;

  sig * env * \amp.kr(0.2);
});
)

(
"functions/helpers.scd".loadRelative;

Routine.new({
  "💿 Start".postln;

  909 i: \bd dur: 1 in: 16;
  \seq.in;
  909 i: \sd dur: 0.25 amp: Pwrand([0, 0.3], [0.8, 0.2], inf) in: 16;

  ~wait.(16);

  909 i: \oh dur: 0.25 amp: Pwrand([0, 0.3], [0.8, 0.2], inf) in: 16;
  909 i: \cr dur: 2 amp: Pwrand([0, 0.7], [20, 1].normalizeSum, inf);

  "🔥 End".postln;
}).play;
)
