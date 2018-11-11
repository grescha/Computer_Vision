% Assignment 1, Computer Exercise 2
clc
clear all
close all

image_path = 'compEx2.JPG';
img = imread(image_path);
load('compEx2.mat')

imagesc(img)
colormap gray

hold on
scatter([p1(1,1), p1(1,2)], [p1(2,1), p1(2,2)], 'x', 'red')
scatter([p2(1,1), p2(1,2)], [p2(2,1), p2(2,2)], 'x', 'red')
scatter([p3(1,1), p3(1,2)], [p3(2,1), p3(2,2)], 'x', 'red')

%Compute lines
l1 = cross(p1(:,1), p1(:,2));
l2 = cross(p2(:,1), p2(:,2));
l3 = cross(p3(:,1), p3(:,2));

rital(l1)
rital(l2)
rital(l3)