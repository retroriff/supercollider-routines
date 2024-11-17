# Routines

A set of composition experiments using Supercollider routines.

## 🛠️ Dependencies

- [Px](https://github.com/retroriff/supercollider-px)

## ✨ Helper functions

### `~wait(beats, message)`

- Pauses the execution of a routine for the specified number of beats
- Automatically calculates and displays cumulative beats and elapsed time in minutes and seconds.
- Logs the routine step count and custom message in the post window

### `~skip`

skipping over certain parts of a routine until the desired starting point is reached.

```
~skip = true; // Skip until the desired point
~wait.(2, "Intro part..."); // This will be skipped
~skip = false; // Resume from here
~wait.(4, "Main section starts!");
```
