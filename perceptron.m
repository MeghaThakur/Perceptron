input=[0 0; 0 1; 1 0; 1 1];
output=[0; 1; 1; 1];
number=4;
bias=-1;
rate=0.7;
itr=10;
rand('state',sum(100*clock));
weights = -1*2.*rand(3,1);
for i=1:itr
	out=zeros(4,1);
	for j=1:number
		y=bias*weights(1,1)+weights(2,1)*input(j,1)+weights(3,1)*input(j,2);
		out(j)=1+(1+exp(-y));
		delta=output(j)-out(j);
		weights(1,1)=weights(1,1)+rate*bias*delta;
		weights(2,1)=weights(2,1)+rate*input(j,1)*delta;
		weights(3,1)=weights(3,1)+rate*input(j,2)*delta;
		
	end
	fprintf("Starting outs\n");
	disp(out);
	fprintf("Starting weights\n");
	disp(weights);
end
