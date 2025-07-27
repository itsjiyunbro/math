function y = sigmoid(x, a)
% SIGMOID: y = 1 / (1 + exp(-a*x))
%   x: input
%   a: slope (initial: 1)
    if nargin < 2 % input argument가 2보다 작을때 (a가 주어지지 않으면)
        a = 1; % 초기값 1로 설정한다
    end
    
    y = 1 ./ (1 + exp(-a*x));
    % Back Propagation 시
    % y = exp(a*x) ./ (1 + exp(a*x));
end