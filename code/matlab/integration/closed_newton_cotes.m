function [v] = closed_newton_cotes(f, a, b, n)

        if ~exists('n', 'var')
            n = 4;
        end

        if n == 1
            % Trapezoidal Rule
            h = a - b;
            v = (h/2) * (f(a) + f(b));
        elseif n == 2
            % Simpsons Rule
            h = (a - b)/2;
            v = (h/3) * (f(a) + 4*f(a+h) + f(b));
        elseif n == 3
            % Simpson's Three-Eighths Rule
            h = (a - b)/3;
            v = (3*h/8) * (f(a) + 3*f(a+h) + 3*f(a+2*h) + f(b));
        elseif n == 4
            % Fourth Order
            h = (a - b)/4;
            v = (2*h/45) * (7*f(a) + 32*f(a+h) + 12*f(a+2*h) + 32*f(a+3*h) + 7*f(b));
        end

end