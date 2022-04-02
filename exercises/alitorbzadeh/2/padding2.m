function [output]=padding2(input)
dim=size(input,3);
if dim~=1
    input=rgb2gray(input);
    col=size(input,2);
    a=zeros(1,col);
    input=vertcat(a,input);
    input=vertcat(input,a);
    row=size(input,1);
    b=zeros(row,1);
    input=horzcat(b,input);
    input=horzcat(input,b);
else
    col=size(input,2);
    a=zeros(1,col);
    input=horzcat(a,input);
    input=horzcat(input,a);
    row=size(input,1);
    b=zerose(row,1);
    input=vertcat(b,input);
    input=vertcat(input,b);
end
column=size(input,2);
roww=size(input,1);
a0=input(:,(column-1));
input(:,column)=a0;
a1=input(:,2);
input(:,1)=a1;
a2=input((roww-1),:);
input(roww,:)=a2;
a3=input(2,:);
input(1,:)=a3;
output=input;
output=input;
end