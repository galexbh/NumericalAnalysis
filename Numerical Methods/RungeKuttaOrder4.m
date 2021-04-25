clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# limite inferior
a = 0;
# limite superior
b = 10;
# valor inicial
w = 2100;
#tamaño de paso
h = 5;
# iteraciones
i = 1;
# ecuación diferencial
f = @(t,y) (0.195)*cos(t)*y;

format longG

for j = a:h:b
  "-----------------------"
  fprintf('Iteracion n:%i\n',i++);
  k1 = h*f(j,w)
  k2 = h*f(j+h/2,w+(1/2)*k1)
  k3 = h*f(j+h/2,w+(1/2)*k2)
  k4 = h*f(j+h,w+k3)
  w = w+(1/6)*(k1+2*k2+2*k3+k4)
end