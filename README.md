<h1 align="center">Modeling the Spread of Contagious Diseases Using Numerical Methods</h1>

The following are 4 methods for approximating solutions of differential equations:

- Taylor's method of order n
- Modified Euler method
- Heunn's method
- Runge-Kutta method

Although of the 4 methods the one that stands out the most is "Runge-Kutta" for its ease and accuracy.

## Taylor's method of order n

Taylor's method is one of the oldest algorithms for approximating the solution of an initial value problem in an ordinary differential equation.

In 1715 a general form for constructing series for all functions for which it exists was presented by the English mathematician Brook Taylor, after whom it is named.
$$
f\left(t\right)=\sum _{n=0}^{\infty }\:\frac{f^n\left(a\right)}{n!}\left(t-a\right)^n
$$
Applying the series found above, a numerical method can be obtained as follows:
$$
y_{i+1}\:=\:y_i\:+\:hT^n\left(t_i,y_i\right);\:y_0\:=\:\alpha 
$$

$$
T^n\left(t_i,y_i\right)=\:f\left(t_i,y_i\right)+\frac{h}{2}f\:'\left(t_i,y_i\right)+...+\frac{\left(h^{\left(n-1\right)}\right)}{n!\:}f^{\left(n-1\right)}\:\left(t_i,y_i\right)
$$

## The modified Euler method

The modified Euler method is also known as the explicit midpoint method and is a refinement of the original Euler method (Taylor method of order 1) with the following differences:
$$
y_0\:=\:\alpha
$$

$$
y_{i+1}=y_i+hf\left(t_i,y_i\right)
$$

Euler's method is done at a point and the slope is calculated for a step of the algorithm, this method is good for linear functions but in other cases there will be a truncation error, to solve this we introduce this method that instead of using a point uses the arithmetic mean of the slope over an interval, thus obtaining:
$$
y_0\:=\:\alpha
$$

$$
y_{i+1}\:=\:y_i\left[f\left(t_i,y_i\right)+f\left(t_{i+1},y_i+hf\left(t_i,y_i\right)\right)\right]
$$

## Heunn's method

Heunn's method is named after Karl Heunn, a professor at the Technical University of Karlrusche who introduced this technique in a paper published in 1900.

Heunn's method is often referred to as the improved Euler method, because it corrects certain problems that Euler's method often encounters. 

Basically the idea behind this method is to use a line of predictions whose slope is the average of the slopes of the tangent lines at the end of the interval to obtain the following method:

$$
y_0\:=\:\alpha
$$

$$
y_{i+1}\:=\:y_i+\:\frac{h}{4}\left(f\left(t_i,y_i\right)+3f\left(t_i+\frac{2h}{3},t_i+\frac{2h}{3}f\left(t_i+\frac{h}{3},y_i+\frac{h}{3}f\left(t_i,y_i\right)\right)\right)\right)
$$

## Runge-kutta method

In 1901 WIlhelm Martin Kutta and Carl David Tolmé Runge used the general format described by Taylor's and Euler's methods, and discovered the Runge Kutta family of iterative methods. This method achieves the accuracy of Taylor's method without requiring the computation of higher derivatives.

This method, like Euler's method, makes use of the slopes and, like Heunn's method, the average of the slopes, which is why the modified Euler method and Heunn's method are considered to be part of the Runge-Kutta family of solutions of order less than 4.

$$
y'\left(t\right)=f\left(t,y\right);\:y\left(t_0\right)=y_0
$$

$$
y_{i+1}\:=\:y_i+\frac{1}{6}h\left(h_1+2k_2+2k_3+k4\right)
$$

$$
\left\{k_1\:=\:f\left(t_i,y_i\right),k_2\:=\:f\left(t_i+\frac{1}{2}h,y_i+\frac{1}{2}k_1h\right),k_3\:=\:f\left(t_i+\frac{1}{2}h,y_i+\frac{1}{2}k_2h\right),k_4\:=\:f\left(t_i+h,y_i+k_3h\right)\right\}
$$

