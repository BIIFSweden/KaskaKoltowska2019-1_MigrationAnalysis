function res = msd_individual0(filenames, legends)
    colors = {'r-', 'g-', 'b-', 'c-', 'm-', 'y-'};
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
        ns = [];
        sums = [];
        i = 1;
        while i <= size(m, 1)
            track = m(i, TRACK);
            slice = m(i, SLICE);
            x = m(i, X);
            y = m(i, Y);
            if slice == 1
                %Plot previous
                if track > 1
                    L(j) = plot(xs - xs(1), ys - ys(1), colors{j})
                end
                xs = [];
                ys = [];
            end
            xs(slice) = x;
            ys(slice) = y;
            i = i + 1;
        end
        if length(xs) > 0
            L(j) = plot(xs - xs(1), ys - ys(1), colors{j})
        end
    end
    legend(L, legends);
end
    
    