(
"functions/helpers.scd".loadRelative;

~octave = [0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1] + 5;

Routine.new({
    "💿 Start".postln;

    1 i: \303 dur: 0.25 octave: ~octave ctf: [\exp, 0.4, 1, 16] env: 0.9 res: 0.4 wave: 0;

    ~wait.(16);

    1 set: 1 ctf: 1 res: [\lin, 0.4, 0, 16];

    ~wait.(16);

    1 set: 1 env: [\lin, 0.9, 0.2, 16] res: 0;
    2 i: \303 dur: 0.25 amp: 0.4 octave: ~octave degree: [0, 1, 5, 3].pseq scale: \scriabin in: 16;

    ~wait.(32);

    1 set: 1 env: 0.2;
    707 i: \sd dur: 0.25 amp: [\exp, 0, 0.6, 16, 1];

    ~wait.(16, "🟢 Second part");

    1 set: 1 ctf: [\exp, 0.4, 1, 16];
    3 i: \bd dur: 1;
    707 i: \cr amp: 0.7;

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

    707 i: \hh dur: 0.25 amp: [\exp, 0, 1, 16, 1];

    ~wait.(16);

    Px root: 3;
    707 i: \cr amp: 0.7 dur: 0;

    ~wait.(16);

    Px root: 0;
    707 i: \cr amp: 0.7 dur: 0;

    ~wait.(16, "🟢 Third part");

    1 set: 1 env: [\lin, 0.9, 0.2, 16] solo: 1;
    707 i: \cr amp: 0.7 dur: 0;

    ~wait.(16);

    Px.release;

    "🔥 End".postln;
}).play;
);

\4 i: \303 dur: Pseq([0.5, 1, 2, 4, 8], inf) sus: Pkey(\dur) ctf: Pwhite(0.1, 1) env: Pwhite(0.1, 1) res: Pwhite(0.1, 1) delay: 0.2 reverb: 0.2;
