function y = d_sigmoid(x,a)
% D_SIG: Derivative of Sigmoid Function
%   x: input
%   a: slope (initial: 1)
    if nargin < 2 % input argument가 2보다 작을때 (a가 주어지지 않으면)
        a = 1; % 초기값 1로 설정한다
    end
    s = sigmoid(x,a);
    y = a * s .* (1 - s);
end
