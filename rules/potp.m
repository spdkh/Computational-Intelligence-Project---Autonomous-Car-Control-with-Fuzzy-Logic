clf
P= [12.8823    1.1053
    4.4758    5.4742
    5.4747   15.5749
   25.0489   14.9533
   24.9609    4.7914];
fig.Color = [0.4 1 0.0];

R_a=10/sqrt(2);
R_s=R_a;
theta = linspace(0, 2*pi, 1000);
x1 = R_s*cos(theta) + P(1,1);y1 =-R_s*sin(theta) + P(1,2);
patch(x1,y1, 1, 'FaceColor', fig.Color);hold on;
x1 = R_s*cos(theta) + P(2,1);y1 =-R_s*sin(theta) + P(2,2);
patch(x1,y1, 1, 'FaceColor', fig.Color);hold on;
x1 = R_s*cos(theta) + P(3,1);y1 =-R_s*sin(theta) + P(3,2);
patch(x1,y1, 1, 'FaceColor', fig.Color);hold on;
x1 = R_s*cos(theta) + P(4,1);y1 =-R_s*sin(theta) + P(4,2);
patch(x1,y1, 1, 'FaceColor', fig.Color);hold on;
x1 = R_s*cos(theta) + P(5,1);y1 =-R_s*sin(theta) + P(5,2);
patch(x1,y1, 1, 'FaceColor', fig.Color);hold on;
x1 = R_s*cos(theta) + P(1,1);y1 =-R_s*sin(theta) + P(1,2);plot(x1, y1,'k','linewidth',1);hold on;
x1 = R_s*cos(theta) + P(2,1);y1 =-R_s*sin(theta) + P(2,2);plot(x1, y1,'k','linewidth',1);hold on;
x1 = R_s*cos(theta) + P(3,1);y1 =-R_s*sin(theta) + P(3,2);plot(x1, y1,'k','linewidth',1);hold on;
x1 = R_s*cos(theta) + P(4,1);y1 =-R_s*sin(theta) + P(4,2);plot(x1, y1,'k','linewidth',1);hold on;
x1 = R_s*cos(theta) + P(5,1);y1 =-R_s*sin(theta) + P(5,2);plot(x1, y1,'k','linewidth',1);hold on;




X_env=30;                        %   environment size
Y_env=20;
n=5;                            %   number of robots
R_a=10/sqrt(2);                 %   confidence radius of robots
R_s=R_a+0.1;                    %   sensing radius of robots    

R_s=R_s;
dt=0.05;                        %   step of points
dt_m=0.1;                       %   step of motion
dt_t=0.1;                       %   step of time
K_p=1;
T=40;                          %   simulation time
crs=[ 0     0                       %   limited area
      0     Y_env
      10    Y_env
      10    2
      20    2
      20    Y_env
      X_env Y_env
      X_env 0
      0     0 ];
  obs_w=[13 0
      13    2
      17    2
      17    0
      13    0      ];
%   plot(obs_w(:,1),obs_w(:,2),'w','linewidth',10);hold on;
%   patch(obs_w(:,1),obs_w(:,2), 1, 'FaceColor', 'w')

c=0;
%%     Plot Obstacles
obs=[   10  2
        10  20.5
        20  20.5
        20  2
        10  2];
plot(obs(:,1),obs(:,2),'w','linewidth',1);hold on;
patch(obs(:,1),obs(:,2), 1, 'FaceColor', 'w')

plot(crs(:,1),crs(:,2),'k','linewidth',5);hold on

axis_env=[0,X_env,0,Y_env]+[-0.12,0.07,-0.07,0.12];
axis(axis_env)

x=0:dt:X_env;                   %   region discretization
y=0:dt:Y_env;
theta = linspace(0, 2*pi, 1000);
goalHandle = plot(P(:,1),P(:,2),'+r','linewidth',3);
currHandle = plot(P(:,1),P(:,2),'ro','linewidth',3);
plot(crs(:,1),crs(:,2),'k','linewidth',5)
xlabel('X','FontSize',12,'FontWeight','Bold')
ylabel('Y','FontSize',12,'FontWeight','Bold')
