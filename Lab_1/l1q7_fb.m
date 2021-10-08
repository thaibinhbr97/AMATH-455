

% Parameter
M = 0.455*1.3; % cart mass
v = 10.68*1.3; % coeff of friction
n_g = 1.00; % gearbox coeff
K_g = 3.71; % gearbox gear ratio
n_m = 0.88; % motor efficiency
K_t = 0.00767; % motor torque constant
K_m = 0.00767; % back_emf constant
R_m = 2.6; % motor armature resistance
r_mp = 0.00636; % motor pinion radius

a = (-n_g*K_g*n_m*K_t*K_g*K_m/(R_m*(r_mp^2)) - v)/M; 
b = (n_g*K_g*n_m*K_t)/(M*R_m*r_mp); 

A = [0 1; 0 a];
B = [0; b];
C = eye(2);
D = [0; 0];
plot(out.x1.time,out.x1.data);
xlabel('t');
ylabel('x(t) and v(t)');