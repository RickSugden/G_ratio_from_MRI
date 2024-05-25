# G_ratio_from_MRI
Undergraduate thesis project developing novel method for calculation of "g-ratio" under Dr. Jonathan Thiessen.

The g-ratio is a well-studied metric that has predictive power for the efficiency of conduction in brain nervous tissue. This metric is traditionally obtained using histology, but this imposes the limitation of needing a tissue sample. This limitation motivates the search for a non-invasive surrogate measurement using imaging like MRI. 

In this project I developed a novel pipeline for estimating the G-ratio in a human subject (me!) using neurite orientation dispersion and diffusion imaging (NODDI) and Myelin-water imaging (MWI) acquisitions. 

**Overview of pipeline:**
![g_ratio_diagram drawio (1)](https://github.com/RickSugden/G_ratio_from_MRI/assets/41484082/51e3ffd1-c70e-4250-91e4-2e6fe2bda6aa)
**A.** The G-ratio is the ratio between the radius of the neuron to the radius of the neuron and myelin sheath. 
**B.** Diagram of white matter using a three compartment model. Blue is neuron and red is myelin sheath. Grey is all other brain matter.
**C.** My project uses two definitions: axon volume fraction (AVF) and myelin volume fraction (MVF).
**D.** Novel pipeline combines different appraoches in the literature to form a novel method for g-ratio estimation.

