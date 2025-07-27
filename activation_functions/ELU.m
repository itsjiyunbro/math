function y = ELU(x, alpha)
% ELU
%   y = x, (x>=0)
%     = α(e^x - 1), (x<0)
    y = zeros(size(x)); % x크기의 0으로 초기화
    y(x >= 0) = x(x >= 0);
    y(x < 0) = alpha * (exp(x(x < 0)) - 1);
end