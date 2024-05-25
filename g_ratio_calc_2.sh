#!/bin/bash
clear
#Instructions:
# this is what we are calculating AVF = (1-MVF)*calculated_v
# g-ratio = sqrt[1/(1+MVF/AVF)]
#this script needs to be in a folder containing a folder MVF (containing P#_MVF.nii) 
# and a folder calculated_v (containing P#_calculated_v). It also needs a folder AVF, g_ratio and temp to 
# put the AVF files (this folder can be empty) and other outputs

echo " "
echo "MWF to MVF converter"
echo "By: Rick Sugden, rsugden@uwo.ca"
echo "This pipeline uses commands from fsl please cite fsl if using this script."
echo " " 
##########################################################
cd $PROJ_HOME/control/estimated_NODDI_DTI #this takes us to the folder 
`pwd`
#this is where the calculations happen
#you can change the directory input to wherever the FA maps are stored

#calculate the denominator
#fslmaths ./MVF/P1_MVF -mul -1 -add 1 -mul ./calculated_v/P1_calculated_v ./AVF/P1_AVF
fslmaths ./rick_MVF_masked.nii.gz -div ./retry_rick_estimated_noddi_v_resized.nii.gz -add 1 ./temp/denominator

# calculate the reciprocal of the denominator
fslmaths ./temp/denominator -recip ./temp/reciprocal

# use AVF to calculate the denominator of the G-ratio
fslmaths ./temp/reciprocal -sqrt ./retry_rick_gratio.nii.gz



#calculate the g-ratio
#fslmath ./temp/reciprocal -sqrt /g_ratio/P1_gratio