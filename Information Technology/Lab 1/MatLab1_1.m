figure(1)

t = -1:0.01:1;               %Go from -1 to 1 in a step of 0.1
squarewave = square(2*pi*t); %The square wave to be plotted in red is given by square(2 * pi * x)
p=1;                         %Initalize p = 1, This is the position of the graph on the figure.
for i = [1,3,5,10,50,500]    %6 frequencies
    subplot(3,2,p)           %Make a subplot
    hold on;                 %This retains plots in the current axes so that new plots added to the axes do not delete existing plots.
    totalwave = 0;           %Initialize it for the for loop.
    for k = 1:2:2*i          %We do 2*i to make sure the numbers are odd, i.e if i = 50, we get 50 odd numbers from 1 to 100.
        totalwave = totalwave + (sin(2*pi*k*t)/k); %Account for sumation (Sigma Symbol)
    end
    totalwave = (4* totalwave)/pi;
    title("Approximation with " + i + " sin functions");
    plot(t,totalwave,t,squarewave)
    p = p+1;                  % Move on to next value of p
end