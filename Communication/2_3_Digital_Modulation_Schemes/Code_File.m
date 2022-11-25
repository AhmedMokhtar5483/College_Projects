%% Generating the data:
% ---------------------
n = 4;          % The length of the Data.
d_rows=1600;    % How many data rows you want?
out_data = zeros(d_rows,n); % Initialize output data
% E = 1;
N0 = 0.05:0.01:70;
for i = 1:d_rows % Generate the Data
    Data = randi([0, 1], [1, n]);   % Generate random int data 0 or 1 with length of n
    out_data(i,:) = Data;           % the output data for Non Return Zero Waveforms 500*700
end
noise_real = randn(d_rows,1);
noise_img = randn(d_rows,1);
noise = noise_real+ 1i*noise_img;

%% 1)BPSK
% For this constellation we calculated the value of Eb to equal to 1

Data_BPSK_Tx = out_data(:,1)*2-1; % Mapping Data into 1 and -1
BPSK_BER = zeros(1,length(N0)); % Intialize an array for the BER
Data_BPSK_Rx=zeros(d_rows,length(N0)); % Initialize An array for recived signals with diff. noises

for i = 1:length(N0) % Calculate the BER
    Data_BPSK_Rx(:,i) = Data_BPSK_Tx + sqrt(N0(i)/2)*noise;
    Data_BPSK_DeMap = (Data_BPSK_Rx(:,i) >0)*1;
    BPSK_BER(i) = 1-sum(Data_BPSK_DeMap == out_data(:,1))/d_rows;
end

figure
subplot(2,2,1)
scatter (real(Data_BPSK_Tx), imag(Data_BPSK_Tx),'r','+')
hold on
scatter (real(Data_BPSK_Rx(:,1)), imag(Data_BPSK_Rx(:,1)),'b')
title('The largest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,2)
scatter (real(Data_BPSK_Tx), imag(Data_BPSK_Tx),'r','+')
hold on
scatter (real(Data_BPSK_Rx(:,length(N0))), imag(Data_BPSK_Rx(:,length(N0))),'b')
title('The smallest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,3)
plot (1./N0 , BPSK_BER)
title('Bit Error Rate of BPSK')
xlabel('Eb/No')
ylabel('Bit Error Rate')
grid on

subplot(2,2,4)
semilogy (20*log(1./N0) , BPSK_BER)
title('Bit Error Rate of BPSK In dB')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
grid on
% -----------------------------------------------------------------------------
%% 2)QPSK
% For this constellation we calculated the value of Eb to equal to 1

Data_QPSK = out_data(:,1:2); % Mapping Data into 1 and -1
data = Data_QPSK(:,1) + Data_QPSK(:,2)*2;
Data_QPSK_Tx = (data == 0)*(-1-1i) + (data == 1)*(-1+1i)...
                        +(data == 2)*(1-1i) + (data == 3)*(1+1i);
QPSK_BER = zeros(1,length(N0));         % Intialize an array for the BER
Data_QPSK_DeMap = zeros(d_rows,2);      % Intialize Matrix After the demodulator
Data_QPSK_Rx=zeros(d_rows,length(N0));  % Initialize An array for recived signals with diff. noises

for i = 1:length(N0) % Calculate the BER
    Data_QPSK_Rx(:,i) = Data_QPSK_Tx + sqrt(N0(i)/2)*noise;
    Data_QPSK_DeMap(:,1) = (imag(Data_QPSK_Rx(:,i))>0)*1;
    Data_QPSK_DeMap(:,2) = (real(Data_QPSK_Rx(:,i))>0)*1;
    QPSK_BER(i) = 1-sum(sum(Data_QPSK == Data_QPSK_DeMap))/(2*d_rows);
end

figure
subplot(2,2,1)
scatter (real(Data_QPSK_Tx), imag(Data_QPSK_Tx),'r','+')
hold on
scatter (real(Data_QPSK_Rx(:,1)), imag(Data_QPSK_Rx(:,1)),'b')
title('The largest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,2)
scatter (real(Data_QPSK_Tx), imag(Data_QPSK_Tx),'r','+')
hold on
scatter (real(Data_QPSK_Rx(:,length(N0))), imag(Data_QPSK_Rx(:,length(N0))),'b')
title('The smallest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,3)
plot (1./N0 , QPSK_BER)
title('Bit Error Rate of QPSK')
xlabel('Eb/No')
ylabel('Bit Error Rate')
grid on

subplot(2,2,4)
semilogy (20*log(1./N0) , QPSK_BER)
title('Bit Error Rate of QPSK In dB')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
grid on
% -----------------------------------------------------------------------------
%% 3) 8PSK
% For this constellation we calculated the value of Eb to equal to 1/3

Data_8PSK = out_data(:,1:3);
data = Data_8PSK(:,1) + Data_8PSK(:,2)*2 + Data_8PSK(:,3)*4;
Data_8PSK_Tx = (data == 0)* exp(1i*0) + (data == 1) * exp(1i*pi/4) ...
            + (data == 2) * exp(1i*3*pi/4)+ (data == 3) * exp(1i*pi/2)...
            + (data == 4) * exp(1i*7*pi/4) + (data == 5) * exp(1i*3*pi/2)...
            + (data == 6) * exp(1i*pi) + (data == 7) * exp(1i*5*pi/4) ;
PSK_BER = zeros(1,length(N0)); % Intialize an array for the BER
Data_8PSK_DeMap = zeros(d_rows,3); % Intialize Matrix After the demodulator
Data_8PSK_Rx=zeros(d_rows,length(N0)); % Initialize An array for recived signals with diff. noises

for i = 1:length(N0) % Calculate the BER
    Data_8PSK_Rx(:,i) = Data_8PSK_Tx + sqrt(N0(i)/2)*noise;
    Data_8PSK_Rx_angle = angle(Data_8PSK_Rx(:,i)) + (angle(Data_8PSK_Rx(:,i)) <0)*2*pi; % Make the angel form 0 to 2*pi
    Data_8PSK_DeMap(:,1) = ((Data_8PSK_Rx_angle)>1*pi/8 & (Data_8PSK_Rx_angle)< 5*pi/8) + ...
                            ((Data_8PSK_Rx_angle)>9*pi/8 & (Data_8PSK_Rx_angle)< 13*pi/8);
    Data_8PSK_DeMap(:,2) = ((Data_8PSK_Rx_angle)>3*pi/8 & (Data_8PSK_Rx_angle)< 11*pi/8)*1;
    Data_8PSK_DeMap(:,3) = ((Data_8PSK_Rx_angle)>7*pi/8 & (Data_8PSK_Rx_angle)< 15*pi/8)*1;
    PSK_BER(i) = 1-sum(sum(Data_8PSK == Data_8PSK_DeMap))/(3*d_rows);
end

figure
subplot(2,2,1)
scatter (real(Data_8PSK_Tx), imag(Data_8PSK_Tx),'r','+')
hold on
scatter (real(Data_8PSK_Rx(:,1)), imag(Data_8PSK_Rx(:,1)),'b')
title('The largest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,2)
scatter (real(Data_8PSK_Tx), imag(Data_8PSK_Tx),'r','+')
hold on
scatter (real(Data_8PSK_Rx(:,length(N0))), imag(Data_8PSK_Rx(:,length(N0))),'b')
title('The smallest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,3)
plot (1./N0 , PSK_BER)
title('Bit Error Rate of 8PSK')
xlabel('Eb/No')
ylabel('Bit Error Rate')
grid on

subplot(2,2,4)
semilogy (20*log((1/3)./N0) , PSK_BER)
title('Bit Error Rate of 8PSK In dB')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
grid on
% -----------------------------------------------------------------------------
%% 4) 16-QAM
% For this constellation we calculated the value of Eb to equal to 2.5

Data_QAM = out_data;
data = Data_QAM(:,1) + Data_QAM(:,2)*2 + Data_QAM(:,3)*4+ Data_QAM(:,4)*8;
Data_QAM_Tx = (data == 0)*(-3-3i) + (data == 1)*(-3-1i)...
            +(data == 2 )*(-3+3i) + (data == 3)*(-3+1i)...
            +(data == 4 )*(-1-3i) + (data == 5)*(-1-1i)...
            +(data == 6 )*(-1+3i) + (data == 7)*(-1+1i)...
            +(data == 8 )*(3-3i) + (data == 9)*(3-1i)...
            +(data == 10)*(3+3i) + (data == 11)*(3+1i)...
            +(data == 12)*(1-3i) + (data == 13)*(1-1i)...
            +(data == 14)*(1+3i) + (data == 15)*(1+1i);
QAM_BER = zeros(1,length(N0));      % Intialize an array for the BER
Data_QAM_DeMap = zeros(d_rows,4);   % Intialize Matrix After the demodulator
Data_QAM_Rx=zeros(d_rows,length(N0)); % Initialize An array for recived signals with diff. noises

for i = 1:length(N0) % Calculate the BER
    Data_QAM_Rx(:,i) = Data_QAM_Tx + sqrt(N0(i)/2)*noise;
    Data_QAM_DeMap(:,1) = (imag(Data_QAM_Rx(:,i))>-2 & imag(Data_QAM_Rx(:,i))<2)*1;
    Data_QAM_DeMap(:,2) = (imag(Data_QAM_Rx(:,i))>0)*1;
    Data_QAM_DeMap(:,3) = (real(Data_QAM_Rx(:,i))>-2 & real(Data_QAM_Rx(:,i))<2)*1;
    Data_QAM_DeMap(:,4) = (real(Data_QAM_Rx(:,i))>0)*1;
    QAM_BER(i) = 1-sum(sum(Data_QAM == Data_QAM_DeMap))/(4*d_rows);
end

figure
subplot(2,2,1)
scatter (real(Data_QAM_Tx), imag(Data_QAM_Tx),'r','+')
hold on
scatter (real(Data_QAM_Rx(:,1)), imag(Data_QAM_Rx(:,1)),'b')
title('The largest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,2)
scatter (real(Data_QAM_Tx), imag(Data_QAM_Tx),'r','+')
hold on
scatter (real(Data_QAM_Rx(:,length(N0))), imag(Data_QAM_Rx(:,length(N0))),'b')
title('The smallest signal to noise Ratio (SNR)')
xlabel('Real')
ylabel('Imaginary')
grid on

subplot(2,2,3)
plot (1./N0 , QAM_BER)
title('Bit Error Rate of QAM')
xlabel('Eb/No')
ylabel('Bit Error Rate')
grid on

subplot(2,2,4)
semilogy (20*log(2.5./N0) , QAM_BER)
title('Bit Error Rate of QAM In dB')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
grid on
% -----------------------------------------------------------------------------
%% compare the output BER
semilogy (20*log(1./N0) , BPSK_BER)
hold on
semilogy (20*log(1./N0) , QPSK_BER)
hold on
semilogy (20*log((1/3)./N0) , PSK_BER)
hold on
semilogy (20*log(2.5./N0) , QAM_BER)
hold on
legend('BPSK','QPSK','8PSK','QAM')
title('Bit Error Rate of All constlations In dB')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
xlim([0 25])
grid on

%% compare the output BER Analiticaly

BPSK_BER_a = zeros(1,length(N0)); % Intialize an array for the BER
QPSK_BER_a = zeros(1,length(N0)); % Intialize an array for the BER
PSK_BER_a = zeros(1,length(N0)); % Intialize an array for the BER
QAM_BER_a = zeros(1,length(N0)); % Intialize an array for the BER
for i =1:length(N0)
BPSK_BER_a(i) = 0.5*erfc(sqrt(1/N0(i)));
QPSK_BER_a(i) = 0.5*erfc(sqrt(1/N0(i)));
PSK_BER_a(i) = 0.5*erfc(sqrt(1/N0(i)));
QAM_BER_a(i) = 0.5*erfc(sqrt(1/N0(i)));
end
figure
semilogy (20*log(1./N0) , BPSK_BER_a)
hold on
semilogy (20*log(1./N0) , QPSK_BER_a)
hold on
semilogy (20*log((1/3)./N0) , PSK_BER_a)
hold on
semilogy (20*log(2.5./N0) , QAM_BER_a)
hold on
legend('BPSK','QPSK','8PSK','QAM')
title('Bit Error Rate of All constlations In dB Analiticaly')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
xlim([0 25])
grid on