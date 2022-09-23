 clc;
close all;

x=input('Enter the sequence x[n]=');
N=input('Enter n');
disp(N);
subplot(3,1,1);
stem(x);
%ylim([-1,2]);
xlabel('n');
ylabel('x(n)');
title('Input Signal');
grid on;

if N>length(x)
    for i =1:N-length(x)
        x=[x 0];
    end
end

y=zeros(1,N);
for k =0:N-1
    for n=0:N-1
        y(k+1)=y(k+1)+x(n+1)*exp((-1i*2*pi*k*n)/N);
    end
end

disp(y);
subplot(3,1,2);
stem(y);
%axis([-7 7 -5 5]);
xlabel('k');
ylabel('X(k)');
title('DFT Values ');
grid on;

M=length(y);
m=zeros(1,M);
for k =0:M-1
    for n=0:M-1
        m(k+1)=m(k+1)+((1/M)*y(n+1)*exp((1i*2*pi*k*n)/M));
    end
end

disp(m);
subplot(3,1,3);
stem(m);
xlabel('n');
ylabel('y(n)');
title('IDFT Values ');
grid on;