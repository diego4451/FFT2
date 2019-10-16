#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*fft(n,m,x,y) */
int main()
{
int n,m;             /*n-Cantidad de puntos -- m-log2n etapas */
int i,j,k,n1,n2;
double c,s,e,a,t1,t2;
/*EStos son los datos a ingresar*/    
n =8;
m=3;
double x[8]={1,2,3,4,4,3,2,1};
double y[8]={0,0,0,0,0,0,0,0};

/* bit-reverse */
j = 0; 
n2 = n/2;

for (i=1; i < n - 1; i++)

{
  n1 = n2;
  while ( j>= n1 )
    {
      j = j - n1;
      n1 = n1/2;
    }
  j = j + n1;

  if (i< j)
    {
      t1 = x[i];
      x[i] = x[j];
      x[j] = t1;
      t1 = y[i];
      y[i] = y[j];
      y[j] = t1;
    }
 }

/* FFT */
n1 = 0; 
n2 = 1;

for (i=0; i< m; i++)
{
  n1 = n2;
  n2 = n2 + n2;
  e = -6.283185307179586/n2;
  a = 0.0;
  
  for (j=0; j< n1; j++)
{  
c = cos(a);
s = sin(a);
a = a + e;

for (k=j; k < n; k=k+n2)
{
t1 = c*x[k+n1] - s*y[k+n1];
t2 = s*x[k+n1] + c*y[k+n1];
x[k+n1] = x[k] - t1;
y[k+n1] = y[k] - t2;
x[k] = x[k] + t1;
y[k] = y[k] + t2;
}

}
}

printf("%d",n);
printf("%f", x[0]);

return 0; 
}

