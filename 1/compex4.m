% Computer vision, Assignment 1, Exercise 4
clc
clear all
close all

load('compEx4.mat')

im1 = imread('compEx4im1.JPG');
im2 = imread('compEx4im2.JPG');

figure(1)
imagesc(im1)
colormap gray

figure(2)
imagesc(im2)
colormap gray

% Decompose camera matrices
[K1, R1, t1] = decompose(P1);
[K2, R2, t2] = decompose(P2);

% Compute centers and principial axes of cameras
cam1_center = -t1;
cam1_ax = R1*[0,0,1]';
cam2_center = -t2;
cam2_ax = R2*[0,0,1]';

% Plot 3D points
figure(3)
hold on
alpha1 = 10; %For scaling axis vectors
alpha2 = 1e-5;
flattened = pflat(U);
scatter3(flattened(1,:), flattened(2,:), flattened(3,:), '.')
axis equal

% Plot camera centers and principial axes
scatter3(cam1_center(1), cam1_center(2), cam1_center(3), 'red')
quiver3(cam1_center(1), cam1_center(2), cam1_center(3), ... 
    cam1_center(1)+alpha1*cam1_ax(1), cam1_center(2)+alpha1*cam1_ax(2), cam1_center(3)+alpha1*cam1_ax(3), '.')
%scatter3(cam2_center(1), cam2_center(2), cam2_center(3), 'red')
%quiver3(cam2_center(1), cam2_center(2), cam2_center(3), ... 
%    cam2_center(1)+alpha2*cam2_ax(1), cam2_center(2)+alpha2*cam2_ax(2), cam2_center(3)+alpha2*cam2_ax(3))

