(
"functions/helpers.scd".loadRelative;

~buf = [3, 1, 0, 5, 0, 3, 5, 1];
~buf2 = [0, 1, 3, 6, 1, 4, 1, 3];

Routine.new({
    "💿 Start".postln;

    TR08.preset(\electro, 1).vol(0.4);
    1 play: ["electro/bass", ~buf] amp: 0.7 dur: 0.25 beat: 0.7 degree: \rand length: 5 seed: 755 scale: \scriabin;
    707 i: \cr amp: 0.6 dur: 0;

    ~wait.(16);

    707 i: \cr amp: 0.6 dur: 0;

    ~wait.(12);

    707 i: \sd dur: 0.25 beat: 0.6 seed: 101;

    ~wait.(4, "🟢 Two");

    \707 i: \sd;
    2 play: "electro/sweep:1" dur: 0;
    Px blp: 0.2;

    ~wait.(12);

    707 i: \sd dur: 0.25 beat: 0.6 seed: 102;

    ~wait.(4, "🟢 Three Zap");

    TR08.preset(\electro, 4);
    \1 play: ["electro/bass", ~buf];
    \707 i: \sd;
    3 play: "electro/zap" dur: 0.25 beat: 0.7 amp: 0.7;
    2 play: "electro/sweep" dur: 0;
    707 i: \cr amp: 0.6 dur: 0;

    ~wait.(16);

    3 set: 1 wah: 0.2;
    707 i: \cr amp: 0.6 dur: 0;

    ~wait.(12);

    707 i: \sd dur: 0.25 beat: 0.5 seed: 103;

    ~wait.(4, "🟢 Four");

    TR08.preset(\electro, 1);
    \3 play: "electro/zap";
    \707 i: \sd;
    1 play: ["electro/bass", ~buf2] amp: 0.8 dur: 0.25 beat: 0.7 degree: \rand length: 5 seed: 110 scale: \scriabin;
    2 play: "electro/sweep:1" dur: 0;

    ~wait.(16);

    707 i: \cr amp: 0.6 dur: 0;

    ~wait.(12);

    707 i: \sd dur: 0.25 beat: 0.6 seed: 104;

    ~wait.(4, "🟢 Five");

    \707 i: \sd;
    1 play: ["electro/bass", ~buf] amp: 0.7 dur: 0.25 beat: 0.7 degree: \rand length: 5 seed: 755 scale: \scriabin;
    2 play: ["electro/sweep", 1] dur: 0;
    Px blp: 0.2;

    ~wait.(16);

    808 i: \rs amp: 0.4 dur: 0.25 beat: 0.7 reverb: 0.1 delay: 0.2 pan: \rand;
    707 i: \cr amp: 0.6 dur: 0;

    ~wait.(4);

    Px.release;

    "🔥 End".postln;
}).play;
);
