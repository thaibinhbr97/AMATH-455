clear all;
m_l = 0.52;
k = 142;
d = 2;
b = k;

a0 = b/m_l;
w1 = sqrt(k/m_l);
b01 = w1;
b1 = d/m_l;

grid on
hold on
G1 = tf([a0], [1 b1 b01^2]);
bode(G1);

w2 = 30;
b02 = w2;
G2 = tf([a0], [1 b1 b02^2]);
bode(G2);

w3 = 5;
b03 = w3;
G3 = tf([a0], [1 b1 b03^2]);
bode(G3);

legend("omega = 16.5", "omega = 30", "omega = 5");