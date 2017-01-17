#######################################################################
# Implemented by Tinniam V Ganesh
# Date : 17 Jan 2016
# Function: decision_line_plot.m
########################################################################
function decision_line_plot(neg_examples, pos_examples,w)

plot(neg_examples(:,1),neg_examples(:,2),"ob");
hold on;
plot(pos_examples(:,1),pos_examples(:,2),"+r");
hold on;
a = w;
# Compute extremeti
#a = [-w(3)/w(1),0;0,-w(3)/w(2)]
 
a = [-1,(-w(3) -w(1)* -1)/w(2); 1 ,(-w(3) -w(1)*1)/w(2)];
plot(a(:,1),a(:,2),"-b");
xlim([-1,1]);
ylim([-1,1]);
hold off;

