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

format longG

for j = a:h:b
  "-----------------------"
  fprintf('Iteracion n:%i\n',i++);
  w = w+h*f(j+h/2,w+(h/2)*f(j,w))
end