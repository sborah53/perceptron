#######################################################################
# Implemented by Tinniam V Ganesh
# Date : 17 Jan 2016
# Function: compute_activation.m
########################################################################
# Compute the activation
function [w] = compute_activation(neg_examples, pos_examples,w)
## Compute weights based on negative examples
for i=1:size(neg_examples,1)
   features= neg_examples(i,:);
	 activation = sigmoid(features * w);
   # Is the output a '1' when it should be '0'
	 if(activation > sigmoid(0)) 
      #Subtract features fromw weight
	    w = w - features';
	  end
end

for i=1:size(pos_examples,1)
   features= pos_examples(i,:);
	 activation = sigmoid(features * w);
   #Is the output a '0' when it should be a '1'
	 if(activation <= sigmoid(0))
     # Add features to weight
	    w = w + features';
	  end
end

endfunction