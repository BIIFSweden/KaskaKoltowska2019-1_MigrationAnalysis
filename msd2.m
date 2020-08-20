function res = msd2(filename, tipfile)
    m=csvread(filename, 1, 0);
    m2=csvread(tipfile, 1, 0);
    % Column indices
    TRACK = 1;
    SLICE = 2;
    X = 3;
    Y = 4;
    
    x0s = [];
    y0s = [];
    i = 1;
    while i <= size(m2, 1)
        slice = m2(i, SLICE)
        x0s(slice) = m2(i, X);
        y0s(slice) = m2(i, Y);
        i = i + 1
    end

    ns = [];
    sums = [];
    i = 1;
    while i <= size(m, 1)
        track = m(i, TRACK);
        slice = m(i, SLICE)
        x = m(i, X);
        y = m(i, Y);
        d2 = (x - x0s(slice))^2 + (y - y0s(slice))^2;
        if size(sums, 2) >= m(i, SLICE)
            sums(m(i, SLICE)) = sums(m(i, SLICE)) + d2;
            ns(m(i, SLICE)) = ns(m(i, SLICE)) + 1;
        else
            sums(m(i, SLICE)) = d2;
            ns(m(i, SLICE)) = 1;
        end
        i = i + 1;
    end
    res = sums./ns;
    res(isnan(res))=0;
end
    
    