(
"functions/helpers.scd".loadRelative;

Px.clear;

~r1 = Routine({
    "💿 Start".postln;

    707 i: \bd dur: 1;
    707 i: \oh dur: 1 off: 0.5 amp: 0.4;
    Dx.preset(\break, 3);
    1 loop: ["mak-4", \jump] amp: 1 seed: 17 reverb: 0.2 wah: [\exp, 0, 0.4, 64] in: 10;
    707 i: \cr dur: 32 amp: 0.8;

    ~wait.(32);

    Dx.preset(\break, 2);
}).play;
)