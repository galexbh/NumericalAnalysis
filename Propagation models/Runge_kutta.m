# función inicial
f = @(t,y) (200e-3*y-2e-6*y^2);

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

for i = 1:N;
  k1 = h*f(t,w);
  k2 = h*f(t+h/2.0, w+k1/2.0);
  k3 = h*f(t+h/2.0, w+k2/2.0);
  k4 = h*f(t+h, w+k3);
  w = w+(k1+2.0*(k2+k3)+k4)/6.0;
  t = a+i*h;
  fprintf('%.4f %.8f\n', t, w);
  plot(t,w,'b*'); grid on;
  xlabel("valores de t"); ylabel("valores de w");
  hold on;
endfor