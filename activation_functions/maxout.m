function y = maxout(x, k)
%% 수정 필요!
% MAXOUT: 여러 개의 출력값 중 가장 큰 1개만을 선정하는 함수
%    출력값의 개수 k = 5라고 했을때, 5개의 출력값(z) 중 가장 큰 수 선정
%    y = max(z1, z2, z3, z4, z5);
    
    ii = 1:k;

    %y(1:k) = 0; % y를 x와 같은 크기로 0 초기화
    y = zeros(size(x));
    y(1) = x(1);

    % index 2 ~ k-1의 중간값
    for ii = 2:1:k 
        y(ii) = max(y(ii-1), x(ii));
        hold on;
    end
    
    % 마지막값
    y(k) = max(y(k-1), x(k));
end
