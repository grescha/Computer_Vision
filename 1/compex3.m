% Computer vissign, Assignment 1, Exercise 3
clc
clear all
close all

load('compEx3.mat')

figure(1)
hold on
axis equal
for i = 1:length(startpoints)
   plot([startpoints(1,i), endpoints(1,i)], ...
       [startpoints(2,i), endpoints(2,i)], 'blue') 
end

%Define projective mapping matrices
H1 = [sqrt(3), -1, 1; 1, sqrt(3), 1; 0 0 2];
H2 = [1 -1 1; 1 1 0; 0 0 1];
H3 = [1 1 0; 0 2 0; 0 0 1];
H4 = [sqrt(3) -1 1; 1 sqrt(3) 1; 1/4 1/2 2];

%Transform points, and plot the lines between them
H = H4 %Choose transformation matrix

startpoints_transformed_homo = H*[startpoints; ones(1,length(startpoints))];
endpoints_transformed_homo = H*[endpoints; ones(1,length(endpoints))];
startpoints_transformed = pflat(startpoints_transformed_homo);
endpoints_transformed = pflat(endpoints_transformed_homo);
figure(2)
hold on
axis equal
for i = 1:length(startpoints)
   plot([startpoints_transformed(1,i), endpoints_transformed(1,i)], ...
       [startpoints_transformed(2,i), endpoints_transformed(2,i)], 'blue') 
end