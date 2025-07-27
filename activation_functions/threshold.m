function y = threshold(x)
% THRESHOLD
% f(x) = if (x<-1) then -1
% elseif (-1<=x<1) then -1
% elseif (x>=1) then 1
    y = zeros(size(x)); % x와 같은 크기의 0 초기화
    y(x < 1) = -1;
    y(x >= 1) = 1;
end
%% if에서는 벡터 비교 불가!!
% 따라서 아래와 같은 전개는 불가!!
    % if x<-1
    %     y = -1;
    % elseif (x>=-1 & x<1)
    %     y = -1;
    % else % x >= 1
    %     y = 1;
    % end