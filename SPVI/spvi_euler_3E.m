# limite inferior
a = 0;
# limite superior
b = 3;
# valor inicial 1
w1 = 1;
# valor inicial 2
w2 = 2;
# valor inicial 3
w3 = 0;
# ecuación diferencial
h = 0.2;
# iteraciones
i = 0;
# ecuación diferencial 1
f1 = @(t,u1,u2,u3) u2;
# ecuación diferencial 2
f2 = @(t,u1,u2,u3) u3;
# ecuación diferencial 3
f3 = @(t,u1,u2,u3) -2*u3+u2+2*u1+exp(t);

format longG

for j = a:h:b-h
    "---------------------"
    fprintf('Iteracion n:%i\n',i++);
    x = w1+(h*f1(j,w1,w2,w3))
    y = w2+(h*f2(j,w1,w2,w3))
    w3 = w3+(h*f3(j,w1,w2,w3))
    w1 = x;
    w2 = y;
end