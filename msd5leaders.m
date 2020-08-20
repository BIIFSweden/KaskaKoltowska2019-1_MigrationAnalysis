function msd5leaders(filenames, nangles, leaders, type)

    angles = [];
    angles_leaders = [];
    n = 0;
    n_leaders = 0;
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
                x = m(i, X);
                y = m(i, Y);
                xd = x - x0s(track);
                yd = y - y0s(track);
                a = atan2d(yd, xd) * pi / 180;
                if a < 0
                    a = a + 2 * pi;
                end
                if i == leaders{j}
                    n_leaders = n_leaders + 1
                    angles_leaders(n_leaders) = a;
                else
                    n = n + 1
                    angles(n) = a;
                end            
            end
            i = i + 1;
        end
    end
    figure
    polarhistogram(angles_leaders, nangles)
    title(strcat('Polar histogram leaders (', type, ')'))
    hold off
    figure
    polarhistogram(angles, nangles)
    title(strcat('Polar histogram followers (', type, ')'))
    hold off
end
    
    