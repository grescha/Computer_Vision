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

%Compute and plot lines
l1 = cross(p1(:,1), p1(:,2));
l2 = cross(p2(:,1), p2(:,2));
l3 = cross(p3(:,1), p3(:,2));
rital(l1)
rital(l2)
rital(l3)

%Computer intersection point between lines 2 and 3
interesection_point_homo = cross(l2, l3);
intersection_point_tmp = pflat(interesection_point_homo);
intersection_point = intersection_point_tmp(1:2);
scatter(intersection_point(1), intersection_point(2), 'fill')

%Compute distance between line 1 and intersection point
x = intersection_point;
distance = abs(l1(1)*x(1)+l1(2)*x(2)+l1(3))/sqrt(l1(1)^2+l1(2)^2);
fprintf('The distance is %d.\n', distance)