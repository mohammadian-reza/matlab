syms y x
clc
y =input('function=');
a=input('start=');
b=input('end=');
e=input('khata<');
   while(abs(a-b)>e)
       b=a;
       a=a-(subs(y,x,a)/subs(diff(y),x,a));
       disp('--------------a----------------------');
       disp(a);
   end
   

      