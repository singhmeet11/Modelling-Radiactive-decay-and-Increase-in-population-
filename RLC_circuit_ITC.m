%solving the schrodinger wave equation using the megthod of laplace's
%transform


%taking the input fromm the user
a=input("the value of R\n");
b=input("the value of C\n");
c=input("the value of L\n");
d=input("the value of V\n");
e=input("the value of I(0)\n");
f=input("the value of Q(0)\n");
%definig the variables
syms L C I(t) Q(t) s V R

%defying the equation
dI = diff(I,t);
dQ = diff(Q,t);
eqn1 = V-I*R-L*dI-Q/C == 0
eqn2 = dQ == I

%defying the initial conditions
cond1 = I(0)  == 0
cond2 = Q(0) == 0

%calculate the laplace transform  
eqn1LT = laplace(eqn1,t,s);
eqn2LT = laplace(eqn2,t,s);

%substituting the equations 
syms I_LT Q_LT
eqn1LT = subs(eqn1LT,[laplace(I,t,s) laplace(Q,t,s)],[I_LT Q_LT])
eqn2LT = subs(eqn2LT,[laplace(I,t,s) laplace(Q,t,s)],[I_LT Q_LT])

%further solving 
eqns = [eqn1LT eqn2LT];
var = [I_LT Q_LT];
[I_LT, Q_LT] = solve(eqns,var);

% calculating the inverse laplace and then simplifying 
Isol = ilaplace(I_LT,s,t);
Qsol = ilaplace(Q_LT,s,t);
Isol = simplify(Isol);
Qsol = simplify(Qsol);

%giving the values to all the variables when we are solving further
var = [R L C I(0) Q(0) V];
value = [a b c e f d ];
Isol = subs(Isol,var,value);
Qsol = subs(Qsol,var,value);


%we will now plot the values for I(t) and Q(t) using the subplot commmand
subplot(2,1,2)
fplot(Qsol,[0 10])                        
title('Charge')
ylabel('Q(t)')
xlabel('time')
grid on


subplot(2,1,1)
fplot(Isol,[0 10])                      
title('Current')
ylabel('I(t)')
xlabel('time')
grid on



