clc
%闭环系统传递函数建立
%输入倒立摆传递函数 G（e）=num/den
%M=0.5;
M=0;
%m=0.2;
m=1;
%b=0.1;
b=0;
%c=0.1;
c=0;
%I=0.006;
I=0;
g=9.8;
%l=0.3;
l=3;
%传递函数分子分母系数分母用F，分子用Z表示
F1=(I+m*l^2)*(M+m)+m^2*l^2;
F2=(I+m*l^2)*b+(M+m)*c;
F3=b*c-(M+m)*m*g*l;
F4=m*g*l*b;
Z1=m*l;
%传递函数
num=[Z1 0 0];
den=[F1 F2 F3 F4 0];
G=tf(num,den)