function y = tan_h(x)
% TANH: hyperbolic tangent function
%   sinh(x) = (exp^(x) - exp^(-x))/2;
%   cosh(x) = (exp^(x) + exp^(-x))/2;
%   tanh(x) = sinh(x) ./ cosh(x);

    y = (exp(x) - exp(-x)) ./ (exp(x) + exp(-x));
end