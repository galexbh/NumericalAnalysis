# limite inferior
a = 1;
# limite superior
b = 2;
# valor inicial
w = -1;
# tamaño de paso
h = 0.2;
# iteraciones
i = 0;
# ecuación diferencial
f = @(t,y) 1/t^2-y/t-y^2;

format longG

for j = a:h:b
  "-----------------------"
  fprintf('Iteracion n:%i\n',i++);
  w = w+(h/4)*(f(j,w)+3*f(j+(2/3)*h,w+(2/3)*h*f(j+h/3,w+(h/3)*f(j,w))))
end