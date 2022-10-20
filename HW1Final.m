%Problem 9.7
figure(1)
H1 = tf([.000001,.0018240,1.0706,201.40],[1, 0.05, 32.361,.76881, 237.95,1.0706,201.40]);
bode(H1)
title('9.7a bode')
grid on 
P=pole(H1)
% 9.7b
figure(2)
H = tf([.001,.00004, .024320, .00036480, .10706,],[1, 0.05, 32.361,.76881, 237.95,1.0706,201.40]);
bode(H)
title('9.7b Bode')
grid on
K=pole(H)

%% 9.8b

syms M s C K m c k
L1 = RR_poly([M, C,  K]); 
L2 = RR_poly([C, K]); 
L3 = RR_poly([m, c, k]); 
L4 = RR_poly([c, k]);
L5 = L3 * L1 - L4*L4 + L3*L4
L6 = L3*L2
RR_tf(L6, L5)
%% 9.8c
syms M s C K c k
L1 = RR_poly([M, C,  K]); 
L2 = RR_poly([C, K]); 
L3 = RR_poly([c, k]); 
L4 = RR_poly([c, k]);
L5 = L3 * L1 - L4*L4 + L3*L4;
L6 = L3*L2;
tfc=RR_tf(L6, L5)

%% 9.8d


syms s m c k
L1 = RR_poly([10, 0,  10]); 
L2 = RR_poly([10]); 
L3 = RR_poly([c, k]); 
L4 = RR_poly([c, k]);
L5 = L3 * L1 - L4*L4 + L3*L4
L6 = L3*L2
RR_tf(L6, L5)


agag=tf([1],[1 0 1])
Poles=pole(agag)
Zeroes=zero(agag)
figure(1)
bode(agag)
figure(2)
step(agag)

%% 9.8e
sedds=tf([1],[1 0 1 0])
Poles=pole(sedds)
Zeroes=zero(sedds)
figure(3)
bode(sedds)
figure(4)
step(sedds)
%% 9.8f


syms  s k c
m=0;
M=10;
K=10;
C=14.14;
L1 = M*s^2 + C*s + K
L2 = K + C*s
L3 = m*s^2 + k + c*s
L4 = k + c*s


L5 = expand(L1*L3-L4^2+L4*L3)
L6 = expand(L2*L3)

t=L6/L5
agag=tf([sqrt(2) 1],[1 sqrt(2) 1])
Poles=pole(agag)
Zeroes=zero(agag)
figure(1)
bode(agag)
figure(2)
step(agag)


sedds=tf([sqrt(2) 1],[1 sqrt(2) 1 0])
Poles=pole(sedds)
Zeroes=zero(sedds)
figure(3)
bode(sedds)
figure(4)
step(sedds)

%% 9-12 Bode
%a
figure(10)
a = tf([1],[1 1]);
aaa=pole(a)
aa=zero(a)
bode(a)
title('9.12a')
%b
figure(11)
b = tf([1 -1],[1]);
bbb=pole(b)
bb=zero(b)
bode(b)
title('9.12b')
%c
figure(12)
c = tf([1 -1],[1 1]);
ccc=pole(c)
cc=zero(c)
bode(c)
title('9.12c')
%d
figure(13)
d = tf([1 101 100],[1 0]);
ddd=pole(d)
dd=zero(d)
bode(d)
title('9.12d')
%e
figure(14)
e = tf([1 0],[1 101 100]);
eee=pole(e)
ee=zero(e)
bode(e)
title('9.12e')
%f
figure(15)
f = tf([1],[1 1 1]);
fff=pole(f)
ff=zero(f)
bode(f)
title('9.12f')