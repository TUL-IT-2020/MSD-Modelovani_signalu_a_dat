N=10;
M=4;
H=zeros(N,2*M);
for k=1:M
    H(:,k) = cos(2*pi*k*(0:N-1)/N)';
    H(:,M+k) = sin(2*pi*k*(0:N-1)/N)';
end
H'*H