#######################################################################
# Implemented by Tinniam V Ganesh
# Date : 17 Jan 2016
# Function: perceptron.m
#
########################################################################
function [w] = perceptron()
echo off
clear ; close all; clc
#Load 
#load data1;
load data2
sz_neg_examples = size(neg_examples_nobias,1);
sz_pos_examples = size(pos_examples_nobias,1);

neg_examples = [neg_examples_nobias,ones(sz_neg_examples,1)];
pos_examples = [pos_examples_nobias,ones(sz_pos_examples,1)];
w= rand(3,1);

[errors0, errors1] = get_errors(neg_examples, pos_examples,w);
total_errors = size(errors0)(1) + size(errors1)(1);
iter=0;
while (total_errors > 0) 
 iter = iter + 1;
 %Update the weights of the perceptron.
   
   w = compute_weights(neg_examples,pos_examples,w);
   [errors0, errors1] = get_errors(neg_examples, pos_examples,w);
   total_errors = size(errors0) + size(errors1);
   fprintf('Number of errors in iteration %d:\t%d\n',iter,total_errors);
   decision_line_plot(neg_examples, pos_examples,  w);
    if(total_errors <= 2)
       break;
    end
end
endfunction