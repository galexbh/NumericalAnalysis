clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# limite inferior
a = 1;
# limite superior
b = 4.5;
# valor inicial 1
w1 = 0;
# valor inicial 2
w2 = 1;
# valor inicial 3
w3 = 3;
# tamaño de paso
h = 0.269;
# iteraciones
i = 1;
# ecuación diferencial 1
f1 = @(t,u1,u2,u3) u2;
# ecuación diferencial 2
f2 = @(t,u1,u2,u3) u3;
# ecuación diferencial 3
f3 = @(t,u1,u2,u3) u3/t-3*u2/(t^2)+4*u1/(t^3)+5*log(t)+9;

for j=a:h:b-h
  "---------------------"
  fprintf('Iteracion n:%i\n',i++);
  x = w1+(h*f1(j+h/2,w1+(h/2)*f1(j,w1,w2,w3),w2+(h/2)*f2(j,w1,w2,w3),w3+(h/2)*f3(j,w1,w2,w3)))
  y = w2+(h*f2(j+h/2,w1+(h/2)*f1(j,w1,w2,w3),w2+(h/2)*f2(j,w1,w2,w3),w3+(h/2)*f3(j,w1,w2,w3)))
  w3 = w3+(h*f3(j+h/2,w1+(h/2)*f1(j,w1,w2,w3),w2+(h/2)*f2(j,w1,w2,w3),w3+(h/2)*f3(j,w1,w2,w3)))
  w1 = x;
  w2 = y;
end
