function [sums, sum2s, ns] = msd_individual0(filenames, legends)
    colors = {'r-', 'g-', 'b-', 'c-', 'm-', 'y-'};
    sums = [];
    sum2s = [];
    ns = [];
    for j=1:length(filenames)
        filename = filenames{j};
        m=csvread(filename, 1, 0);
        % Column indices
        TRACK = 1;
        SLICE = 2;
        X = 3;
        Y = 4;

        xs = [];
        ys = [];
        i = 1;
        while i <= size(m, 1)
            track = m(i, TRACK);
            slice = m(i, SLICE);
            x = m(i, X);
            y = m(i, Y);
            if slice == 1
                x0 = x;
                y0 = y;
                %Plot previous
                if track > 1
                    L(j) = plot(xs, ys, colors{j})
                end
                xs = [];
                ys = [];
                d2 = 0;
            else
                d2 = (x - x0)^2 + (y - y0)^2;
            end
            xs(slice) = slice;
            ys(slice) = d2;
            if length(sums) >= slice
                sums(slice) = sums(slice) + sqrt(d2);
                sum2s(slice) = sum2s(slice) + d2;
                ns(slice) = ns(slice) + 1;
            else
                sums(slice) = sqrt(d2);
                sum2s(slice) = d2;
                ns(slice) = 1;
            end
            i = i + 1;
        end
        if length(xs) > 0
            L(j) = plot(xs, ys, colors{j})
        end
    end
    legend(L, legends);
end
    
    