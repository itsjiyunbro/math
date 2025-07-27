%% Mathematical equations for Deep Learning
close all; clear all;

x = -10:0.1:10;
%% Sigmoid Function
figure;
subplot(1,2,1);

plot(x, sigmoid(x,1), 'b-', 'LineWidth', 1);
hold on;

for ii = 2:1:5
    plot(x, sigmoid(x,ii), '--', 'LineWidth', 1);
end

title('Sigmoid');
legend('a = 1','a = 2','a = 3','a = 4', 'a = 5');
xlabel('x');
ylabel('\sigma(x)');
xlim([-10 10]);
ylim([-0.1 1.3]);
grid on;

%% Derivative of Sigmoid Function
subplot(1,2,2);
hold on;

for ii = 1:1:5
    plot(x, d_sigmoid(x, ii));
end

title('Derivative of Sigmoid');
legend('a = 1','a = 2','a = 3','a = 4', 'a = 5');
xlabel('x');
ylabel('\sigma(x)(1-\sigma(x))');
xlim([-10 10]);
ylim([-0.1 1.3]);
grid on;

%% tanh(x): Hyperbolic Tangent Function
figure;
plot(x, tan_h(x), 'LineWidth', 2);

title('tanh(x)');
legend('tanh(x)');
xlabel('x');
ylabel('tanh(x)');
xlim([-10 10]);
ylim([-1.1 1.1]);
grid on;

%% Unit-step Function
figure;

plot(x, u_step(x,0));
title('Unit-step function');
legend('u(x)');
xlabel('x');
ylabel('u(x)');
xlim([-10 10]);
ylim([-0.1 1.1]);
grid on;

%% Threshold Logic Function
figure;
plot(x, threshold(x), 'LineWidth', 2);

title('Threshold logic function');
legend('y(x)');
xlabel('x');
ylabel('y(x)');
xlim([-10 10]);
ylim([-1.1 1.1]);
grid on;

%% Swish Function


%% ReLU Function
figure;
subplot(3,1,1);
plot(x, ReLU(x), 'LineWidth', 2);
title('ReLU');
legend('R(x) = max(0,x)');
xlim([-10 10]);
ylim([-2 10]);
grid on;

%% Leaky ReLU Function
subplot(3,1,2);
plot(x, leaky_ReLU(x), 'LineWidth', 2);
title('Leaky ReLU');
legend ('R(x) = max(0.1x, x)');
xlim([-10 10]);
ylim([-2 10]);
grid on;

%% Exponential Linear Unit (ELU) Function
subplot(3,1,3);
n = 5; % the number of graphs

plot(x, ELU(x, 1), 'LineWidth', 0.1);
hold on;

for ii = 1:1:n % alpha setting
    plot(x, ELU(x, 0.1*ii), '--', 'LineWidth', 2);
end

title('ELU');
legend('ELU(x)')
xlim([-10 10]);
ylim([-2 10]);
grid on;

%% maxout Function
k = 5; % 출력값 개수 5
x = round(10*rand(1,k));

figure;
plot(1:k, x, 'bo', 'MarkerSize', 8);
hold on;

y = maxout(x, k);
plot(1:k, y, 'r-', 'LineWidth', 2);

title('Maxout');
legend('max[x1, x2, x3, x4, x5]');
xlim([0 6]);
ylim([0 11]);
grid on;