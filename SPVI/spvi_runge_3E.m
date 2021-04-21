
# limite inferior
a = 0;
# limite superior
b = 1;
# valor inicial 1
w1 = 1;
# valor inicial 2
w2 = 0;
# valor inicial 3
w3 = 1;
#tamaño de paso
h = 0.5;
# iteraciones
i = 0;
# ecuación diferencial 1
f1 = @(t,u1,u2,u3) u2;
# ecuación diferencial 2
f2 = @(t,u1,u2,u3) -u1-2*exp(t)+1;
# ecuación diferencial 3 
f3 = @(t,u1,u2,u3) -u1-exp(t)+1;

format longG

for j = a:h:b-h
    "---------------------"
    fprintf('Iteracion n:%i\n',i++);
    k11 = h*f1(j,w1,w2,w3);
    k12 = h*f2(j,w1,w2,w3);
    k13 = h*f3(j,w1,w2,w3);
    
    k21 = h*f1(j+h/2,w1+(1/2)*k11,w2+(1/2)*k12,w3+(1/2)*k13);
    k22 = h*f2(j+h/2,w1+(1/2)*k11,w2+(1/2)*k12,w3+(1/2)*k13);
    k23 = h*f3(j+h/2,w1+(1/2)*k11,w2+(1/2)*k12,w3+(1/2)*k13);
    
    k31 = h*f1(j+h/2,w1+(1/2)*k21,w2+(1/2)*k22,w3+(1/2)*k23);
    k32 = h*f2(j+h/2,w1+(1/2)*k21,w2+(1/2)*k22,w3+(1/2)*k23);
    k33 = h*f3(j+h/2,w1+(1/2)*k21,w2+(1/2)*k22,w3+(1/2)*k23);
    
    k41 = h*f1(j+h,w1+k31,w2+k32,w3+k33);
    k42 = h*f2(j+h,w1+k31,w2+k32,w3+k33);
    k43 = h*f3(j+h,w1+k31,w2+k32,w3+k33);

    w1 = w1+(1/6)*(k11+2*k21+2*k31+k41)
    w2 = w2+(1/6)*(k12+2*k22+2*k32+k42)
    w3 = w3+(1/6)*(k13+2*k23+2*k33+k43)
end