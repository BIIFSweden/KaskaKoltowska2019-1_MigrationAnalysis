function res = msd(filename)
    m=csvread(filename, 1, 0);
    % Column indices
    TRACK = 1;
    SLICE = 2;
    X = 3;
    Y = 4;

    x0s = [];
    y0s = [];
    ns = [];
    sums = [];
    i = 1;
    while i <= size(m, 1)
        track = m(i, TRACK);
        if m(i, SLICE) == 1
            x0s(track) = m(i, X);
            y0s(track) = m(i, Y);
            if size(sums, 2) >= m(i, SLICE)
                sums(m(i, SLICE)) = sums(m(i, SLICE)) + 0;
                ns(m(i, SLICE)) = ns(m(i, SLICE)) + 1;
            else
                sums(m(i, SLICE)) = 0;
                ns(m(i, SLICE)) = 1;
            end
        else
            x = m(i, X);
            y = m(i, Y);
            d2 = (x - x0s(track))^2 + (y - y0s(track))^2;
            if size(sums, 2) >= m(i, SLICE)
                sums(m(i, SLICE)) = sums(m(i, SLICE)) + d2;
                ns(m(i, SLICE)) = ns(m(i, SLICE)) + 1;
            else
                sums(m(i, SLICE)) = d2;
                ns(m(i, SLICE)) = 1;
            end
        end
        i = i + 1;
    end
    res = sums./ns;
    res(isnan(res))=0;
end
    
    