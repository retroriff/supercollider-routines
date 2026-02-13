// TODO: Release també ha de cridar prDisableFx

(
"functions/helpers.scd".loadRelative;

~r1 = Routine.new({
  i = 0;

  loop {
    Px.release(20, i);
    i = if (i < 2, i + 1, 1);
    i play: ["fm", \rand] amp: 0.6 seed: \rand in: 20;
    Fx(i).space(0.9, inf);
    ~wait.(32);
  }
});

~r2 = Routine.new({
  loop {
    0 loop: ["fm", \rand] dur: 20 beats: 20 amp: 0.6 seed: \rand;
    ~wait.(48);
  }
});

Routine.new({
  "💿 Start".postln;
  "Dedicated to Mika Vainio".postln;

  ~r1.play;

  ~wait.(32);

  707 i: \bd dur: 0.25 beat: 0.3 amp: 0.4 seed: 159 delay: 0.3 lpf: 0.9 in: 20;

  ~wait.(64);

  7072 i: \henon dur: 2 off: 1 amp: 0.4 human: 0.2 delay: 0.3 hpf: 0.6 in: 20;

  ~wait.(32);

  ~r2.play;

  ~wait.(64);

  ~r1.stop;

  Fx(i).vst(0.6);

  ~wait.(1);

  Fx(i).vstReadProgram;

  "🔥 End".postln;
}).play;
)
