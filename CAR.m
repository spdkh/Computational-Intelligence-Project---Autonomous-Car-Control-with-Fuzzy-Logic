world1 = vrworld ('vrmount.wrl');
car = vrnode(world1, 'Automobile')
open(world1);
fig = view(world1, '-internal');
vrdrawnow;
%get(world)
%nodes(world)
%fields(car)
z0 = 0;
x0 = 3;
y0 = 0.25;

v = 2;

z1 = z0:v:10;
x1 = x0 + zeros(size(z1));
y1 = y0 + zeros(size(z1));

z2 = 12:v:26;
x2 = 3:1.4285*v:23;
y2 = 0.25 + zeros(size(z2));

x3 = 23:v:43;
z3 = 26 + zeros(size(x3));
y3 = 0.25 + zeros(size(z3));

car.rotation = [0, 1, 0, -1.7];

for i=1:length(x1)
    car.translation = [x1(i) y1(i) z1(i)];
    vrdrawnow;
    pause(0.1);
end

car.rotation = [0, 1, 0, -0.7];
vrdrawnow;

for i=1:length(x2)
    car.translation = [x2(i) y2(i) z2(i)];
    vrdrawnow;
    pause(0.1);
end

car.rotation = [0, 1, 0, 0];
vrdrawnow;
% 
% for i=1:length(x3)
%     car.translation = [x3(i) y3(i) z3(i)];
%     vrdrawnow;
%     pause(0.1);
% end
% 
% reload(world);
% vrdrawnow;