%spreadsheet to stats
clear
close all

cd /home/rick/Documents/2020_USRI/DTI_summer_research_project/segmentation_processing/spreadsheets
counter = 1;
number_of_files=14;


files = dir('/home/rick/Documents/2020_USRI/DTI_summer_research_project/segmentation_processing/spreadsheets/*.csv');

for i = 1:number_of_files
    M(i,:,:)= csvread(files(i).name);
    
end

 cd /home/rick/Documents/2020_USRI/DTI_summer_research_project/scripts