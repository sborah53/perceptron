function [val] = sigmoid(a)
    val = 1/(1+exp(-a));
endfunction