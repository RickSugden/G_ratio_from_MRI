# Novel Pipeline to Estimate G-ratio from MRI Acquisitions
Undergraduate thesis project developing novel method for calculation of "g-ratio" under Dr. Jonathan Thiessen.

The g-ratio is a well-studied metric that has predictive power for the efficiency of conduction in brain nervous tissue. This metric is traditionally obtained using histology, but this imposes the limitation of needing a tissue sample. This limitation motivates the search for a non-invasive surrogate measurement using imaging like MRI. 

In this project I developed a novel pipeline for estimating the G-ratio in a human subject (me!) using Myelin-water imaging (MWI) acquisitions. 

## Overview of pipeline:
![g_ratio_diagram drawio (1)](https://github.com/RickSugden/G_ratio_from_MRI/assets/41484082/51e3ffd1-c70e-4250-91e4-2e6fe2bda6aa)
**A.** The G-ratio is the ratio between the radius of the neuron to the radius of the neuron and myelin sheath. 
**B.** Diagram of white matter using a three compartment model. Blue is neuron and red is myelin sheath. Grey is all other brain matter.
**C.** My project uses two definitions: axon volume fraction (AVF) and myelin volume fraction (MVF).
**D.** Novel pipeline combines different appraoches in the literature to form a novel method for g-ratio estimation using the AVF and MVF.

## Sample results from pipeline
![g_ratio_results drawio](https://github.com/RickSugden/G_ratio_from_MRI/assets/41484082/d79410ff-f779-403c-8567-851c4f6f35c6)
Subject is a 21 year old healthy male. All data was preprocessed with MRTrix3.
**A.** Fractional Anisotropy (FA) acquisition.
**B.** AVF can be calculated using the FA (Edwards et al. 2017).
**C.** Myelin water fraction (MWF) acquisition.
**D.** MVF can be calculated using the MWF (Jung et al. 2018).
**E** Estimated G-ratio map using novel method. 
**F** ROI selected for quality control: Corpus Callosum

## Validation
![g_ratio_validation drawio](https://github.com/RickSugden/G_ratio_from_MRI/assets/41484082/45f1ae81-2e50-408c-9381-69ce79cbf904)
While the estimates cannot be validated by ground truth per-se, I implemented another known method for estimating the g-ratio that leverages "neurite orientation dispersion and diffusion imaging" (NODDI)  and compared my results. Note that my method is unable to estimate some areas in the brain because of limitations of the 3-compartment model. 
A. G-ratio map produced by my method
B. G-ratio map produced by silver-standard method
C. Corpus callosum ROI G-map from my method
D. Corpus callosum ROI G-map from silver-standard method
E. My all-white-matter estimate is similar within the margin of error
F. My corpus-callosum estimate is different, but still within one standard deviation
G. scatter plot showing the high pixelwise correlation between the two methods. High pearson correlation (Rho=0.86) between the two methods. 
