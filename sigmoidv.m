function [m] = sigmoidv(a)
    sz= size(a);
    for i=1:sz(2),
        m(:,i) = sigmoid(a(:,i))
    end
 
endfunction