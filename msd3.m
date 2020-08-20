function msd3(filename)
    m=csvread(filename, 1, 0);
    % Column indices
    TRACK = 1;
    SLICE = 2;
    X = 3;
    Y = 4;

    x0s = [];
    y0s = [];
    i = 1;
    xvals = [];
    yvals = [];
    nc = 8;
    cmap = jet(nc);
    while i <= size(m, 1)
        track = m(i, TRACK);
        slice = m(i, SLICE);
        if slice == 1
            %First plot previous track
            if size(xvals) > 0
                line(xvals, yvals, 'Color', cmap(mod(track-1, nc) + 1, :))
            end
            x0s(track) = m(i, X);
            y0s(track) = m(i, Y);
            xvals = [];
            yvals = [];
            xvals(slice) = 0;
            yvals(slice) = 0;
        else
            x = m(i, X);
            y = m(i, Y);
            xd = x - x0s(track);
            yd = y - y0s(track);
            xvals(slice) = xd;
            yvals(slice) = yd;
        end
        i = i + 1;
    end
    %Plot last track
    if size(xvals) > 0
        line(xvals, yvals, 'Color', cmap(mod(track-1, nc) + 1, :))
    end
end
    
    