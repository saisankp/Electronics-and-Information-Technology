figure(2)

t = -1:0.01:1;
p=1;
for i = [1,3,5,10,50,500]
    subplot(3,2,p)                     % Make a 6x6 subplot
    hold on;
    totalwave = 0;
    v=0;                               %V represents the position on the x axis.
    for k = 1:2:2*i                    %We do 2*i to make sure the numbers are odd, i.e if i = 50, we get 50 odd numbers from 1 to 100.
        totalwave =  (1/k);            %The maximum value of Sin is 1.
        totalwave = (4*totalwave)/pi;
        stem(v,totalwave);             %Stem plot needed for frequency domain.
        v = v+1;                       %Increment v by 1 to make sure the lines aren't on the same x value 
    end
    title("Approximation with " + i + " sin functions");
     p = p+1;                           %Move on to next value of p
end