clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# limite inferior
a = 0;
# limite superior
b = 1;
# valor inicial 1
w1 = 0;
# valor inicial 2
w2 = 0;
# tamaño de paso
h = 0.5;
# iteraciones
i = 1;
# ecuación diferencial 1
f1 = @(t,u1,u2) u2;
# ecuación diferencial 2
f2 = @(t,u1,u2) 2*u2-u1+t*exp(t)-t;

for j = a:h:b-h
    "---------------------"
    fprintf('Iteracion n:%i\n',i++);
    x = w1+h*f1(j,w1,w2)
    w2 = w2+h*f2(j,w1,w2)
    w1 = x;
end