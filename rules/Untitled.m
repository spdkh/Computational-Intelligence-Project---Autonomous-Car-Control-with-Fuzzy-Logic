%% const initial
x_o = 0;
y_o = 0;
x_t = 20;
y_t = 20;

%% initial
x1 = 10 ;
y1 = 10 ;

alpha1 = pi/4;

dx1 = 0;
dy1 = 0;

dvx1 = 0;
dvy1 = 0;

%% formula

dphi1 = atan (dist(y_t,y1)/dist(x_t,x1));
dphi_o1 = atan (dist(y_o,y1)/dist(x_o,x1));

v1 = norm([dx1,dy1]) ;

dv1 = norm([dvx1,dvy1]);
d_o1 = norm([dist(x_o,x1),dist(y_o,y1)]);
d1 = norm([dist(x_t,x1),dist(y_t,y1)]);
row1 = v1^3 / abs((dx1*dvy1)-(dy1*dvx1));

%% updated
ddelta = 0;
o1 = alpha1;
o2 = ddelta;

v2 = o2;
alpha2 = o1;

dv2 = v2 - v1;

dx2 = dv2*cos(alpha2);
dy2 = dv2*sin(alpha2);

dphi2 = dphi1 + (alpha2 - alpha1);

dvx1 = dx2-dx1;
dvy1 = dy2-dy1;


dx1 = dx2;
dy1 = dy2;

x2 = x1+dx1 ;
y2 = y1+dy1 ;




