clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# limite inferior
a = 0;
# limite superior
b = 10;
# valor inicial
w = 1;
# tamaño de paso
h = 2;
# iteraciones
i = 0;
# ecuación diferencial
f = @(t,y) -y+t+1;

format longG

for j = a:h:b
  "-----------------------"
  fprintf('Iteracion n:%i\n',i++);
  w = w+(h*f(j,w))
end