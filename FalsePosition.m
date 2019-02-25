syms y x
y=input('function=');
a=input('start=');
b=input('end=');
e=input('khata=');
c=a-((subs(y,x,a)*(b-a))/(subs(y,x,b)-subs(y,x,a)));
while (abs(subs(y,x,c))>e)
    disp('--------------a : f(a)----------------------');
    disp(a);
   disp(subs(y,x,a));
       disp('--------------b : f(b)----------------------');
    disp(b);
   disp(subs(y,x,b));
    c=a-((subs(y,x,a)*(b-a))/(subs(y,x,b)-subs(y,x,a)));
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
if z==1 
    disp('no root')
end
    
