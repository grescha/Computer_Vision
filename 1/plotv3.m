function plotv3(points)

    for i = 1:size(points, 2)
        plot3([0,0,0], points(:,i))
    end

end

