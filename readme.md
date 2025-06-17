# A template for reproducible research

It is critical that research is reproducible. If you're going to be publishing a figure, you need to know exactly how that figure was created, be able to recreate it at any time, and share with others the code that would enable them to create the figure (the same goes for tables and other research outcomes).

In principle, reproducible research looks like this:

![diagram 1](diagram-1.svg)

In reality, however, this is completely unrealistic -- simulations might take hours or days to run; you're not going to re-run the simulation every time you fix a typo. The following is a more realistic picture:

![diagram 2](diagram-2.svg)

This means two separate repositories:

* One that does the actual research -- the simulations, real data analyses, etc. I called this `res`.
* One that turns those research results into a polished final product. I called this `man` for manuscript, but it could be a presentation or website or something also.

The two repositories are linked through something I'll call the `cache`: this is where the time-consuming results are saved. The `res` repo needs to be able to write to `cache`, and the `man` repo needs to be able to read from `cache`. The directory could be located anywhere:

* AWS
* RDSS
* Google Drive
* etc

In this project, I put it in the `res` repository, but keep in mind that it shouldn't be tracked by `git`: it is not source material and shouldn't be version-controlled.
