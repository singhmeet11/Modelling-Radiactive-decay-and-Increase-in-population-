# Modelling Radiactive decay/Increase in population and RLC cricuit
The Radioactive decay/Increase in Population and RLC cirucit problems can be expressed by differential equations. The equation for radioactive decay/Increase in Poputlation can be given by

<img src="https://render.githubusercontent.com/render/math?math=\frac{dN}{dt} = kN ">.

where N is the population at some particular time t. The equation for an RLC circuit can be derived from the Kirchoff Voltage and  Current laws. The equation for one example is given below(the cirucit can found in photos)- 

<img src="https://render.githubusercontent.com/render/math?math=V - IR -L\frac{dI}{dt} - \frac{Q}{C}= kN ">.

<img src="https://render.githubusercontent.com/render/math?math=\frac{dQ}{dt} = I">.

## Laplace transform to solve differential equations
Laplce tranform is defined as 

<img src="https://render.githubusercontent.com/render/math?math=F(s) = \int_0^{+\infty} f(t) e^{-st} \dt ">.

Let's say we have a differnetial equation-

<img src="https://render.githubusercontent.com/render/math?math=\frac{dy}{dx} = Ky(x) %2BC">.

where K and C are both constants. Taking laplace transforms on both the sides we get,

<img src="https://render.githubusercontent.com/render/math?math=L(\frac{dy}{dx}) = KL(y) %2BL(C)">.

Now, we know that 

<img src="https://render.githubusercontent.com/render/math?math=L(\frac{dy}{dx}) = L(y')= sL(y) - L(0)">.

by equating the above two equations we get the value of **L(y)** on which we can then use inverse laplace tranform to calculate the value of the value of y.
**We will be using this method to solve equations inside of MATLAB**

## Tools used inside of MATLAB
We have used symbolic math toolbox 
#### Symbolic Tool Box : 
Mathematical equations can be found everywhere in real world from simple pendulums to heat flow equations. They require a lot of algebra, calculus and differential equations. Solving them using hand can be tedious work and that is where MATLAB comes in. But even in MATLAB, we need different tool box's for easier and better use. Symbolic math tool box helps a great deal.It can be used to solve equations(ordinary differential  and algebraic) perform differentiation, integration, simplification, transforms.

#### Symbolic Tool Box Commands used : 

1.subs(s,old,new) - return a copy of s with the old variables replaced with new ones.

2.syms a b - creates symbolic variables a and b.

3.diff(a,b) - calculates the difference between adjacent elements of a , b number of times.

4.solve(eqn,var)-solves the equations for these defined variables.

5.laplace(y,s,t)-gives the laplace transform of y.

6.ilaplace(y,s,t)-gives the inverse laplace transform of y.

#### GUI
Graphical User Interfaces (GUIs), which is also called apps. It eliminates the need for other to learn MATLAB language in order to run the program. We have created an interactive app using MATLAB App Designer to simulate various real life problems which can be solved using laplace transform.

We have used callback functions in our app.A callback is a function that executes when a user interacts with a UI component in your app.A callback can be created using several ways.

We have used the right click method,Right-click a component in the canvas, Component Browser, or App Layout pane, and select Callbacks > Add (callback property) callback.

## Conclusion 
This method of solving differential equations using MATLAB's symbolic math toolbox can be used to solve all the differential equations, we shown how to use this by illustrating two examples.



