syms y x
y=input('function=');
a=input('start=');
b=input('end=');
e=input('khata=');
while (abs(a-b)>e)
    disp('--------------a : f(a)----------------------');
    disp(a);
   disp(subs(y,x,a));
       disp('--------------b : f(b)----------------------');
    disp(b);
   disp(subs(y,x,b));
    c=(a+b)/2;
    disp('--------------c : f(c)----------------------');
    disp(c);
   disp(subs(y,x,c));
    if subs(y,x,c)*subs(y,x,a)<0
        b=c;
        z=0;
    elseif subs(y,x,c)*subs(y,x,b)<0
        a=c; 
        z=0;
    elseif subs(y,x,c)==0
        a=c;
        b=c;
        z=0;
    else
        z=1;
        a=b;
    end
end
if z==0 
    disp((a+b)/2);
else
    disp('no root')
end
    
