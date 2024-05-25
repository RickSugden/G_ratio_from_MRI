% this program is to read the files that are output from the segmentation
% pipeline
clear
close all

cd ~/Documents/2020_USRI/DTI_summer_research_project
PROJ_HOME = pwd;

%manually input number of summary files
number_of_files =13;


for file = 1:number_of_files
    
    file
    
    %cd to wherever your PNT1_summary files are kept
    cd ~/Documents/2020_USRI/DTI_summer_research_project/segmentation_processing/summaries/ %the output
    
    if file==1
        fname = 'P1_MWF_freehand_sum';
    elseif file ==2
        fname = 'P2_MWF_freehand_sum';
    elseif file ==3
        fname = 'P3_MWF_freehand_sum';
    elseif file==4
        fname = 'P4_MWF_freehand_sum';
    elseif file ==5
        fname = 'P5_MWF_freehand_sum';
    elseif file ==6
        fname = 'P6_MWF_freehand_sum';
    elseif file==7
        fname = 'P7_MWF_freehand_sum';
    elseif file ==8
        fname = 'P8_MWF_freehand_sum';   
    elseif file ==9
        fname = 'P9_MWF_freehand_sum'; 
    elseif file==10
        fname = 'P10_MWF_freehand_sum'; 
    elseif file ==11
        fname = 'P11_MWF_freehand_sum';     
    elseif file ==12
        fname = 'P12_MWF_freehand_sum';       
    elseif file==13
        fname = 'P13_MWF_freehand_sum';
    end
    
    patient_name = char(fname);
    
    if file >9
      patient_name = patient_name(1:3);
    elseif file < (number_of_files+1)
      patient_name = patient_name(1:2);
    end 
    
    
    fid = fopen(fname);

    %ColHeaders:  Index SegId NVoxels Volume_mm3 StructName Mean StdDev Min Max Range  
    data=textscan(fid,'%f %f %f %f %s %f %f %f %f %f','HeaderLines',51);

    
    segment_id = data (1,2);
    segment_id = cell2mat(segment_id);

    mean_value = data (1,6);
    mean_value = cell2mat(mean_value);
    
    sd = data (1,7);
    sd = cell2mat(sd);
    
    min = data (1,8);
    min = cell2mat(min);
    
    max = data (1,9);
    max = cell2mat(max);
    fclose(fid);

    outname = strcat(patient_name,"_MWF_segstats");
    M= [segment_id, mean_value, sd, min, max ];

    cd /home/rick/Documents/2020_USRI/DTI_summer_research_project/segmentation_processing/spreadsheets
    xlswrite(outname,M);
    
end

cd /home/rick/Documents/2020_USRI/DTI_summer_research_project/scripts

