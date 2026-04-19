clc;
clear;
close all;

data = [
80 75 70 2;
90 85 88 3;
50 60 55 1;
70 65 68 2;
95 90 92 3;
60 55 50 1;
85 80 78 2;
];

fis = genfis1(data,3,'gbellmf');
[trainedFis, error] = anfis(data,fis,50);

figure;
plot(error);

output = evalfis(trainedFis,[85 80 78]);
disp(output);