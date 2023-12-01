clear;
clc;
load('Gaussian1D.mat');
m0=0.5;
m1=0;
m2=0;
m3=0;         %mean

var0=2;
var1=0;
var2=0;
var3=0;     %variance

for i=1:10
    m1=m1+s1(i,1);
end
m1=m1./10;

for i=1:10
    var1=var1+(s1(i,1)-m1)^2;
end
var1=0.1*var1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:100
    m2=m2+s2(i,1);
end
m2=m2./100;

for i=1:100
    var2=var2+(s2(i,1)-m2)^2;
end
var2=0.01*var2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


for i=1:1000
    m3=m3+s3(i,1);
end
m3=m3./1000;

for i=1:1000
    var3=var3+(s3(i,1)-m3)^2;
end
var3=0.001*var3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1);
h1=cdfplot(s1);
hold on
h2=cdfplot(s2);
hold on
h3=cdfplot(s3);
hold on
set(h1,'LineWidth',1.5);
set(h2,'LineWidth',1.5);
set(h3,'LineWidth',1.5);

legend('Empirical CDF_s1','Empirical CDF_s2','Empirical CDF_s3','Theoretical CDF','Location','best')
hold off
