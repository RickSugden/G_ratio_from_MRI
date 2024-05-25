clear
close all

lit_data = [0.77;
0.72;
0.76;
0.77;
0.8]


male_data = [0.80054	0.00692
0.69294	0.02632
0.7278	0.0108
0.73348	0.04264
0.81358	0.01944]

male_mean = male_data(:,1);
male_sd = male_data(:,2);


figure
hold on;
bar(1:5,male_mean);
errorbar(1:5,male_mean,2*male_sd,'.');
title("males FA in the CC by region");


hold on
plot (1:5,lit_data);
legend("mean","2 SD","kim et al.");

female_data = [0.80054	0.00692
0.69294	0.02632
0.7278	0.0108
0.73348	0.04264
0.81358	0.01944]

female_mean = female_data(:,1);
female_sd = female_data(:,2);


figure
hold on;
bar(1:5,female_mean);
errorbar(1:5,female_mean,2*female_sd,'.');
title("females FA in the CC by region");


hold on
plot (1:5,lit_data);
legend("mean","2 SD","kim et al.");