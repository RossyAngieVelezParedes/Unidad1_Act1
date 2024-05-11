function v=secante(f, x0, x1, tol, n)
f=inline(f);
v=[ ];
i=2;
x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
v=[v; i  x0 x1 x2 f(x2)];
while (i<n & abs(x2-x1)>tol)
    x0=x1;
    x1=x2;
    i=i+1;
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    v=[v; i x0 x1 x2 f(x2)];
end
if (i==n)
    fprintf('El metodo fracaso despues de %3.0f iteraciones',i)
else
    fprintf('El me todo tuvo exito despues de %3.0f iteraciones',i)
    fprintf('\n')
    fprintf('Resultados obtenidos')
    fprintf('i x_(i-2) x_(i-1) x_i f(x_i)\n')    
end
