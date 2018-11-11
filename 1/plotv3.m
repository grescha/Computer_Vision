function plotv3(points)
    figure
    hold on
    for i = 1:size(points, 2)
        plot3([0 points(1,i)],[0 points(2,i)],[0 points(3,i)])
    end

end

