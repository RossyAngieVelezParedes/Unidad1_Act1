function v=puntofijo(g,x0,maxi,tol)
g=inline(g);
v=[0 x0 g(x0)];
i=1;
x1=g(x0);
v=[v;i x1 g(x1)]; 
while (i<maxi & abs(x1-x0)>tol)
    x0=x1;
    i=i+1;
    x1=g(x0);
    v=[v;i x1 g(x1)];
end
if (i==maxi)
    fprintf('El metodo fracaso despues de %2.of iteraciones',i)
    fprintf('/n')
else
   fprintf('El metodo tuvo exito despues de %5.of iteraciones',i) 
   fprintf('/n')
   fprintf(' i  x_i   g_(x_i)')
   fprintf('/n')
end
