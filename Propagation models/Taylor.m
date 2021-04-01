# función inicial
f = @(t,y) (200e-3*y-2e-6*y^2); 

# Derivadas recursivas
f1 = @(t,y) (200e-3*f(t,y)-4e-6*(y*f(t,y)));
f2 = @(t,y) (200e-3*f1(t,y)-4e-6*(f(t,y)^2+y*f1(t,y)));
f3 = @(t,y) (200e-3*f2(t,y)-8e-6*f(t,y)*f1(t,y)-4e-6*(f(t,y)*f1(t,y)+y*f2(t,y)));

a = input("ingrese el limite inferior, a: ");
b = input("ingrese el limite superior, b:");
N = input("ingrese el numero de iteraciones, N:");
init = input("Ingrese la condición inicial, init: ");

# Tamaño de paso
h = (b-a)/N;
#Tiempo inicial
t = a;
# Aproximar la solución y
w = init;

for i = 1:N+1
  t(i+1) = t(i)+h
  w(i+1) = w(i)+h*(f(t(i),w(i))+(h/2)*f1(t(i),w(i))+(h^2/6)*f2(t(i),w(i))+(h^3/24)*f3(t(i),w(i)));
  fprintf('%.4f %.8f\n', t(i), w(i));  
  # Grafica
  plot(t(i),w(i),'g*'); grid on;
  xlabel('valores de t'); ylabel('valores de w');
  hold on;
endfor