filename='log.csv';
M=csvread(filename);
[m,n]=size(M);
r=zeros(m,2,(n-1)/2);

for i=1:(n-1)/2
   r(:,1,i)=M(:,2*i-1);
   r(:,2,i)=M(:,2*i);
end

for j=1:(n-1)/2
    hold on
    plot(r(:,1,j),r(:,2,j),'r:+');
     plot(r(:,1,2),r(:,2,2));
    hold off
end
        