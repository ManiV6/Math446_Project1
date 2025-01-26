function [r, fr] = bisect(f, a, b, k, TOL)

    if sign(f(a)) * sign(f(b)) >= 0
        error('f(a)f(b)<0 not satisfied!'); 
    end

    % initializing the variables
    fa = f(a);
    fb = f(b);
    iter = 0;

    while (iter < k) && ((b - a) / 2 > TOL)
        c = (a + b) / 2;
        fc = f(c);

        if fc == 0 % if c is the exact root
            break;
        end
        
        if sign(fc) * sign(fa) < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end

        iter = iter + 1;
    end

    
    r = (a + b) / 2;
    fr = f(r);
end
