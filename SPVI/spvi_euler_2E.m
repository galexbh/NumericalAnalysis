# limite inferior
a = 0;
# limite superior
b = 1;
# valor inicial 1
w1 = 1;
# valor inicial 2
w2 = 1;
# tamaño de paso
h = 0.2;
# iteraciones
i = 0;
# ecuación diferencial 1
f1 = @(t,u1,u2) u2;
# ecuación diferencial 2
f2 = @(t,u1,u2)(2*u2-u1+t*e^t-t);

format longG

for j = a:h:b-h
    "---------------------"
    fprintf('Iteracion n:%i\n',i++);
    f1(j,w1,w2)
    f2(j,w1,w2)
    x = w1+h*f1(j,w1,w2)
    w2 = w2+h*f2(j,w1,w2)
    w1 = x;
end