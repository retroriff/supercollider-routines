(
var routineCount = 0;
var totalBeats = 0;
var totalSeconds = 0;

var formatTimeMessage = { |seconds|
    var cumulativeSeconds = totalSeconds + seconds;
    var minutes = (cumulativeSeconds / 60).floor.asInteger;
    var remainingSeconds = cumulativeSeconds % 60;

    "(" ++ minutes ++ "m " ++ remainingSeconds ++ "s)";
};

var postMessage = { |routineCount, seconds, message|
    var countMessage = "💥" + routineCount ++ ":";
    var beatsString = totalBeats + "beats";

    if (message.notNil)
    { countMessage = countMessage + message + "–" };

    (countMessage + beatsString + formatTimeMessage.(seconds)).postln;
};

~skip = false;

~wait = { |beats, message|
    if (~skip == false) {
        var seconds = (beats / TempoClock.default.tempo).floor.asInteger;

        routineCount = routineCount + 1;
        totalBeats = totalBeats + beats;
        totalSeconds = totalSeconds + seconds;

        postMessage.(routineCount, seconds, message);

        beats.wait;
    };
};

Nfx.clear;

"⏩ To set the starting point:".postln;
"1. At the beginning: ~skip = true;".postln;
"2. At desired start point: ~skip = false;".postln;
)
