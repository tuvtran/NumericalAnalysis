function [ x, num_iters ] = newton( F, JF, x0, e, iters )
%NEWTON Summary of this function goes here
%   Detailed explanation goes here
num_iters = 0;
x = x0;

while num_iters < iters && max(abs(F(x(1), x(2)))) > e
    num_iters = num_iters + 1;
    V = JF(x(1), x(2)) \ -F(x(1), x(2));
    x = x + V;
end

end

