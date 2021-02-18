Rows = input('Please input the number of rows you would like to have: ');
disp(' ');
Columns = input('Please input the number of columns you would like to have: ');
disp(' ');
A=zeros(Rows,Columns);
for k=1:Rows
    for m=1:Columns
        M(k,m)=input(sprintf('Input the matrix value for (%d,%d): ',k,m));
    end
end


m = Rows; % creating a vector of the same number of rows as the matrix above
for i= 1:1
    for j=1:m
    a(i,j)= input('elements in the vector= ');
    vec = [a];
    end
end
b= vec.';
tol = input ("Enter the tolerance");
%{
x is the computed solution to A*x = b.

fl0 is a flag indicating whether the algorithm converged.

rr0 is the relative residual of the computed answer x.

it0 is the iteration number when x was computed.

rv0 is a vector of the residual history for ?b?Ax?
%}
[x,fl0,rr0,it0,rv0] = pcg(A,b,tol,150); % the default number iteration is 150 but the used number is 150


    