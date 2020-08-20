function msd4(filenames, nangles)

    angles = [];
    n = 0;
    for j=1:length(filenames)
        filename = filenames{j};
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
                x0s(track) = m(i, X);
                y0s(track) = m(i, Y);
            else
                n = n + 1
                x = m(i, X);
                y = m(i, Y);
                xd = x - x0s(track);
                yd = y - y0s(track);
                a = atan2d(yd, xd) * pi / 180;
                if a < 0
                    a = a + 2 * pi;
                end
                angles(n) = a;            
            end
            i = i + 1;
        end
    end
    min(angles)
    max(angles)
    polarhistogram(angles, nangles)
end
    
    