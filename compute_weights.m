function [w] = compute_weights(neg_examples, pos_examples,w)
## Compute weights based on negative examples
for i=1:size(neg_examples,1)
   features= neg_examples(i,:);
	 activation = features * w;
	 if(activation >= 0)
	    w = w - features';
	  end
end

for i=1:size(pos_examples,1)
   features= pos_examples(i,:);
	 activation = features * w;
	 if(activation < 0)
	    w = w + features';
	  end
end

endfunction

