% we will now solve the radioactive decay
% equation using the laplace transfrom method to solve the following
% differential equation


%we will define the symbolic variables
syms R(t) s t k

%we will diffine the differential equation dR/dt=kR

dR= diff(R,t);
eqn1= dR==(-1)*k*R;

%diffing the initial condition
cond1= N(0)==0;

%calculting the laplace transform of the eqn
eqn1LT=laplace(eqn1,t,s);

%this will break itself into smaller laplace differential to normal
%differnetial

syms R_lt
eqn1LT = subs(eqn1LT,[laplace(R,t,s)],[R_lt]);

R_lt=solve(eqn1LT,R_lt)

R_soln=ilaplace(R_lt,s,t);
R_soln=simplify(R_soln);

vars = [k R(0)];
values = [1 1000];
R_soln = subs(R_soln,vars,values)



%we are trying to do an animation in which more and more data is added as
%time passes
h = animatedline;


t = linspace(0,10,1000);
%for conversion from symbolic to double
y = double(subs(R_soln));
for k = 1:length(t)
    addpoints(h,t(k),y(k));
    xlabel('time')
    ylabel('bacteria population')
    title('bacteria decay')
    grid on
    drawnow
end

%we will also calculate the half time period
T_half=ln(2)*(1/k)

