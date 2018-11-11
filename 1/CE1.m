clear all
close all
clc

load('compEx1.mat')

% Project points to lower dimension
x2D_proj = pflat(x2D);
x3D_proj = pflat(x3D);

% 3D plots of projected data
figure(1)
plot3(x2D_proj(1,:),x2D_proj(2,:),x2D_proj(3,:),'*')
axis equal

figure(2)
plot3(x3D_proj(1,:),x3D_proj(2,:),x3D_proj(3,:),'*')
axis equal

% Projection function by scaling with last coordinate
function x_proj = pflat(x)
    x_proj = x./x(end,:);
end