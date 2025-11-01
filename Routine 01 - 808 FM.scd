(
"functions/helpers.scd".loadRelative;

~beat = [1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

Routine.new({
    "💿 Start".postln;

    808 i: \bd dur: 1;
    808 i: \ma dur: 0.25 beat: 0.4;
    808 i: \hh dur: 0.25 fill: 0.4 amp: 0.5;
    808 i: \rs dur: 0.25 fill: 0.4 amp: 0.5 delay: 0.2 reverb: 0.2;
    Px reverb: 0.1;

    ~wait.(16);

    \808 i: \hh;
    \808 i: \ma;
    808 i: \cy dur: 0;

    ~wait.(8);

    1 play: ["fm", \rand] dur: 0.25 beat: 0.7 seed: 12 amp: 0.6;
    808 i: \ma dur: 0.25 beat: 0.4;
    808 i: \hh dur: 0.25 fill: 0.82;
    Px blp: 0.2;

    ~wait.(32, "🟢 Second");

    2 play: ["fm", \rand] amp: 0.7 dur: 0.25 beat: 0.7 seed: 12 degree: 12 length: 3 off: 0.5 scale: \minor delay: 0.2;

    ~wait.(32);

    \2 play: ["fm", \rand];
    \808 i: \hh;
    707 i: \ss dur: 0.25 amp: 0.3 pan: \rand;

    ~wait.(32);

    2 play: ["fm", \rand] amp: 0.7 dur: 0.25 beat: 0.7 seed: 12 degree: 12 length: 3 off: 0.5 scale: \minor delay: 0.2;
    808 i: \hh dur: 0.25 beat: 0.4 amp: 0.5;

    ~wait.(16);

    Px.release;

    "🔥 End".postln;
}).play;
)
