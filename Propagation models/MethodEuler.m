clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# ecuación diferencial
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
# iteraciones
i = 0;

for i = 1:N+1
  "---------------------"
  fprintf('Iteracion n:%i\n',i++);
  t(i+1) = t(i)+h
  w(i+1) = w(i)+(h/2)*(f(t(i),w(i))+f(t(i+1),w(i)+h*f(t(i),w(i))));
  fprintf('%.4f %.8f\n', t(i), w(i));  
  # Grafica
  plot(t(i),w(i),'r*'); grid on;
  xlabel('valores de t'); ylabel('valores de w');
  hold on;
endfor