figure(2)
N1 = 7000;
N2 = 3500;
fs1 = 44100;
fs2 = 44100;
subplot(3,1,1) %Subplot with 3 rows, 1 column. -> use the first row
[notes,fs] = audioread('exercise notes.wav');
plot(notes);
hold on;
test1 = notes(1:6793);
test2 = notes(6793:10001);

subplot(3, 1, 2) %Subplot with 3 rows, 1 column. -> use the second row
f1 = fftshift(abs(fft(test1,N1)));
newX1 = -fs1/2:fs1/N1:fs1/2-fs1/N1;
plot(newX1, f1)
hold on;
title('Frequency Spectrum')
xlabel('Frequency')
ylabel('Amplitude') 

subplot(3, 1, 3) %Subplot with 3 rows, 1 column. -> use the third row
f2 = fftshift(abs(fft(test2,N2)));
newX2 = -fs2/2:fs2/N2:fs2/2-fs2/N2;
plot(newX2, f2)
title('Frequency Spectrum')
xlabel('Frequency')
ylabel('Amplitude') 