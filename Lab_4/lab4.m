clear all;
M = 0.815;
m = 0.210;
Ip = 0.305;
g = 9.8;
a = 1.719;
b = 7.682;
e = 2;

A32 = -(3/4 * m*g) / (M+ (1/4)*m);
A33 = -(e+b) / (M + (1/4)*m);
A42 = (3/4)*(g/Ip)*(1+(3/4)*(m/(M+ (1/4)*m)));
A43 = (3/4)*((e+b)/Ip)/(M + (1/4)*m);

A = [0 0 1 0; 0 0 0 1; 0 A32 A33 0; 0 A42 A43 0];

B31 = a / (M+ (1/4)*m);
B41 = -(3/4)*(a/Ip)/(M+(1/4)*m);

B = [0; 0; B31; B41];
C = [1 0 0 0; 0 1 0 0];

rank(ctrb(A,B));
Observe = [C; C*A; C*A*A; C*A*A*A];
rank(Observe);


eigs = [-60 -90 -120 -150];
L = place(A', C', eigs).'


R = 1;
Q2 = diag([5000 15000 20 20]);
[X1,L1,K2] = care(A,B,Q2,R)
K2 = -K2
x0 = [0; 0.06; 0; 0];
 
A1 = A+B*K2;
B1 = [0; 0; 0; 0];
sys2 = ss(A1,B1, C, 0);
t = 0:0.05:5;
u = zeros(length(t),1);
lsim(sys2,u,t,x0)
grid on


