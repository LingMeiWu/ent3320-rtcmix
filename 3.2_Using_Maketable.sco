rtsetparams(44100, 2)
load("WAVETABLE")

// Define a wavetable as a sawtooth waveform:
keon = maketable("wave", 1000, "saw")

// Define a triangular amplitude envelope:
ampenv = maketable("line", 1000, 0,0, 2.5,1, 4.3,0)

WAVETABLE(0, 4.3, 20000*ampenv, 8.02, 0.5, keon)

// Multiply ampenv by constant 20000 to get real amplitude!
// WAVETABLE(outsk, dur, AMP, PITCH[, PAN, WAVETABLE])
