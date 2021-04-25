clear all     # borra variables
clc           # limpia pantalla
format longG  # Formato largo decimal

# limite inferior
a = 1;
# limite superior
b = 2;
# valor inicial 1
w1 = 1;
# valor inicial 2
w2 = 0;
# tamaño de paso
h = 0.2;
# iteraciones
i = 1;
# ecuación diferencial 1
f1 = @(t,u1,u2) u2;
# ecuación diferencial 2
f2 = @(t,u1,u2) (2/t)*u2-(2/t^2)*u1+t*log(t);

for j = a:h:b-h
    "---------------------"
    fprintf('Iteracion n:%i\n',i++);
    k11 = h*f1(j,w1,w2)
    k12 = h*f2(j,w1,w2)

    k21 = h*f1(j+h/2,w1+(1/2)*k11,w2+(1/2)*k12)
    k22 = h*f2(j+h/2,w1+(1/2)*k11,w2+(1/2)*k12)

    k31 = h*f1(j+h/2,w1+(1/2)*k21,w2+(1/2)*k22)
    k32 = h*f2(j+h/2,w1+(1/2)*k21,w2+(1/2)*k22)

    k41 = h*f1(j+h,w1+k31,w2+k32)
    k42 = h*f2(j+h,w1+k31,w2+k32)

    w1 = w1+(1/6)*(k11+2*k21+2*k31+k41)
    w2 = w2+(1/6)*(k12+2*k22+2*k32+k42)
end