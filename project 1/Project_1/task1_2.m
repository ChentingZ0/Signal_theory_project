clear;
clc;
load('Gaussian2D.mat');
x_axis=-3:0.2:3;
y_axis=-3:0.2:3;
figure(1);
xlabel('x');
ylabel('y');
title('sequence1')
histogram2(s1(:,1),s1(:,2),x_axis,y_axis,'Normalization','pdf');

figure(2);
xlabel('x');
ylabel('y');
title('sequence2')
histogram2(s2(:,1),s2(:,2),x_axis,y_axis,'Normalization','pdf');

