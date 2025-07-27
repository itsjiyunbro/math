function y = leaky_ReLU(z)
% Leaky ReLU
    y = max(0.1*z, z);
end