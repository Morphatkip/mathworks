clc;
% The value for matrix A
Rows = input('Please input the number of rows you would like to have  : ');
disp(' ');
Columns = input('Please input the number of columns you would like to have: ');

A=zeros(Rows,Columns); %symmetric positive definite, banded coefficient matrix.

for k=1:Rows
    for m=1:Columns
        M(k,m)=input(sprintf('Input the matrix value for matrix A(%d,%d): ',k,m));
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
C = ichol(A); %specifying a preconditioner using ichol


C = ichol(A,struct('michol','on'));
%{
    x is the computed solution to A*x = b.

    fl0 is a flag indicating whether the algorithm converged.

    rr0 is the relative residual of the computed answer x.

    it0 is the iteration number when x was computed.

    rv0 is a vector of the residual history for ?b?Ax?
[x2,fl2,rr2,it2,rv2] = pcg(A,b,tol,maxit,C,C');
fl2
 

semilogy(0:length(rv0)-1,rv0/norm(b),'-o')
hold on
semilogy(0:length(rv1)-1,rv1/norm(b),'-o')
semilogy(0:length(rv2)-1,rv2/norm(b),'-o')
yline(tol,'r--');
legend('No Preconditioner','Default ICHOL','Modified ICHOL','Tolerance','Location','East')
xlabel('Iteration number')
ylabel('Relative residual')