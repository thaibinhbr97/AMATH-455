clear all;
m_l = 0.52;
k = 142;
d = 2;
b = k;

a0 = b/m_l;
b0 = k/m_l;
b1 = d/m_l;


G = tf([a0], [1 b1 b0]);
bode(G)
grid on

