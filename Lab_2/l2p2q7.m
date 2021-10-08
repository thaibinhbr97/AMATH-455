
m_l = 0.52;
k = 142;
d = 2;
w_nat = sqrt(k/m_l);

m_m = 0.94;
v = 5.4;
alpha = 1.5167;
beta = -6.7967;

g0 = 0;
g1 = k*(d+v-beta);
g2 = (m_l + m_m)*k + (v-beta)*d;
g3 = m_m*d + (v-beta)*m_l;
g4 = m_m*m_l;

a0 = k/m_l;
b1 = d/m_l;
b0 = a0;

c2 = alpha*m_l;
c1 = alpha*d;
c0 = alpha*k;
d4 = m_m*m_l;
d3 = m_m*d + (v-beta)*m_l;
d2 = (m_l+m_m)*k + (v-beta)*d;
d1 = k*(d+v-beta);



plot(out.x.time, out.x.data);
xlabel('t, frequency = 10');
ylabel('x(t) and z(t)');
legend('z(t)', 'x(t)');




