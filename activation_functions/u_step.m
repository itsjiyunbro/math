function y = u_step(x,a)
% U_STEP
%   f(x-a) = 1 (x>=a)
%   f(x-a) = 0 (x<a)
% if문 불가!
    y = zeros(size(x));
    y(x>=a) = 1;
    y(x<a) = 0;
end
