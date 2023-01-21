function [B,K] = optimal()
bbest=0;
kbest=1;
l=0;
sumbest=100000;
for b=-5:0.01:4
    for k=0.01:0.01:1
       sum=((tanh(-b/k)+1)/2)^2+(tanh((0.405096-b)/k)/2+0.45)^2+(tanh((0.626-b)/k)/2)^2+(tanh((1-b)/k)/2-0.5)^2;
       if sum<sumbest
          sumbest=sum;
          bbest=b;
          kbest=k;
       end
        l=l+1;
    end
end
sum=sumbest;
B=bbest;
K=kbest;

