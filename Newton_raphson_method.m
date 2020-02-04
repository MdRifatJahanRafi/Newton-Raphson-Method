clc;
clear;
x=input('x= ');
e=input('Error= ')
for k = 1:20
    t(k)=k;
    a(k)=x;  
    f1(k)=x^3-2*x-5;
    f2(k)=3*x^2-2;
    x=a(k)-(f1(k)/f2(k)); 
    if k>1
     l(k)=((x-a(k))/x)*100;
     m(k)=abs(l(k));
     if m(k)<e
       break;
     end
    end 
end
disp('______________________________')
disp('   Iteration    xi       Error')
disp('______________________________')
p = [t' a' m'];
disp(p)
root = x