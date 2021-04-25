clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# limite inferior
a = 0;
# limite superior
b = 1;
# valor inicial
w = 1/3;
# tamaño de paso
h = 0.10;
# iteraciones
i = 1;
# ecuación diferencial
f = @(t,y) -5*y+5*t^2+2*t;

for j = a:h:b
  "-----------------------"
  fprintf('Iteracion n:%i\n',i++);
  w = w+h*f(j+h/2,w+(h/2)*f(j,w))
end