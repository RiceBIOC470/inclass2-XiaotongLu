%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
end

%Xiaotong Lu:
for ii=1:20
 if rem(ii,2)==1
     disp(int2str(ii));
  end
 end
   
    
% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

%Xiaotong Lu:
x=1;
while x<20
   disp(int2str(x))
   x=x+2;
end

%Xiaotong Lu:
x=-1;
while x<19
    x=x+2;
    disp(int2str(x));
end


% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

%Xiaotong Lu:
 ii=1:10;
 f=sym(ii*2-1);
 disp (int2str(f))

%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end
% Xiaotong Lu:
x=linspace(0,4*pi,100);
 s=sin(x);
 plot(s,'r--');
 hold on;
 c=cos(x);
 plot(c,'b-');


%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

%Xiaotong Lu:
 x=linspace(0,4*pi,100);
 s=sin(x);
 subplot(211)
 plot(s,'r--');
 subplot(212);
 plot(c,'b-');
 


%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,x)^2); 
end
%Xiaotong Lu:
 xy_dat=rand(100,2);
 for ii=1:100
     z(ii)=sqrt(xy_dat(ii,1)^2+xy_dat(ii,2)^2);
 end
     scatter(xy_dat(:,1),xy_dat(:,2),20,z,'filled');
%Xiaotong Lu:
     fluor=rand(100,1);
     scatter(xy_dat(:,1),xy_dat(:,2),20,fluor,'filled');


% d. what is the formula in c computing?
%Xiaotong Lu
% The formula in C computes the color data of each spot in the figure.
%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the
% fluorescnece
% values. Hint: see the scatter command