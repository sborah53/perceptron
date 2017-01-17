#######################################################################
# Implemented by Tinniam V Ganesh
# Date : 17 Jan 2016
# Function: get_errors_logistic.m
########################################################################
function [errors0, errors1] = get_errors_logistic(neg_examples, pos_examples,w)
errors0 = [];

## Compute weights based on negative examples
for i=1:size(neg_examples,1)
   features= neg_examples(i,:);
	 activation = sigmoid(features * w);
	 if(activation > 0.5)
	    errors0 = [errors0;i];
	  end
end
errors1 = [];
for i=size(pos_examples,1)
    features= pos_examples(i,:);
	 activation = sigmoid(features * w);
	 if(activation <= 0.5)
	    errors1 = [errors1;i];
	  end
end
endfunction