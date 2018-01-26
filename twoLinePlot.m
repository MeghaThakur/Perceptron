fig=figure(1);
t=0:0.5:2*pi;
plot(t,sin(t));
hold on;
plot(t,cos(t),'k:');
xlabel("time");
ylabel("fucntion value");
legend('Sine','cos');
