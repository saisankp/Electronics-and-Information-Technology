y = load('array.mat');
figure(1)

subplot(1, 2, 1) %Subplot with 1 row, 2 columns. -> use the first column
plot(y.y)
title('Input signal')
xlabel('Time')
ylabel('Amplitude')

subplot(1, 2, 2) %Subplot with 1 row, 2 columns. -> use the second column
f = fftshift(abs(fft(y.y,y.N)));   %fftshift puts it around the 0 point, abs gets the absolute value
newX = -y.fs/2:y.fs/y.N:y.fs/2-y.fs/y.N;
plot(newX, f)
title('Frequency Spectrum')
xlabel('Frequency')
ylabel('Amplitude') 