clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# limite inferior
a = 0;
# limite superior
b = 2;
# valor inicial
w = 0.3333;
# tamaño de paso
h = 0.1;
# iteraciones
i = 0;
# ecuación diferencial
f = @(t,y) (t+2*t^3)*y^3-t*y;

for j = a:h:b
  "-----------------------"
  fprintf('Iteracion n:%i\n',i++);
  w = w+(h/2)*(f(j,w)+f(j+h,w+h*f(j,w)))
end