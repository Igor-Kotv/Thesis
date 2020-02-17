%% === ������ ����� ��������� ������� �� ����� ����������� ������ ===
%
%   � ���� ������� Microphone_Array_test_15_.m ����������� ��������:
%   - �������� �� ������� ������� ���� ��������� 15 �������;
%   - �������� �� ������� ������� ��������� 0 �������;
%
%   �� �������� � �������:
% - ��� SNR=-10��,0��,+10�� ����������:
%      1) ����� �������;
%      2) ������ ���������� ������;
%      3) �������� �������� �� ��������.
% - ��� ����� ��� ������� �������� SNR �������������� 7 �������:
%    1) ��������� (������������) �������� ������;
%    2) ������ � ������ ���������� ��������;
%    3) ������ � ������ DS-������;
%    4) ������ � ������ LDCM_1-������;
%    5) ������ � ������ LDCM_2-������;
%    6) ������ � ������ LDCM_3-������;
%    7) ������ � ������ LDCM_4-������;

%  ���������: �������� ���������� �.�., �����-����� 2018 �.
%  �����������: ������� �.�., �������� 2018 �.
%%
clc
clear

b=input('������ ��������� ���� ������� (��� �����): ', 's');
disp(' ');
disp('����������� ����� ������ ��� �������� �� ������ 15 �������');
fs = 44100;

for SNR = 10:-10:-10
    tempsig = zeros(1,6);   % ������ ��� ������ ����� �������
    tempnoise = zeros(1,6);   % ������ ��� ������ ���� ������
    tempwhole = zeros(1,6);   % ������ ��� ������ ���������� ��������
       disp(' ');
       disp(['²�������� ������-��� SNR = ' num2str(SNR)]);
       disp(' ');
       disp('�� ������� ��������� �������� ������, ���� ����� 5 ����');
        pause(0.5) 
             snd=audioread('cleanmusic.wav');
        sound(snd, fs);

    pause(10) 
       g = 5;
    tempsig(1)=g;
    tempnoise(1)=0;
    tempwhole(1)=g;
    
    disp(' ');
    disp('����������� ������ 2');
           pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/Array_15.wav']);
        sound(snd, fs);
    pause(10) 
  g=input('������ ����� ������� (�� 1 �� 5, ����� �������):  ');
  gn=input('������ ����� ������:  ');
  gw=input('������ �������� �������� �� ��������:  ');
    tempsig(2)=g;
    tempnoise(2)=gn;
    tempwhole(2)=gw;

    disp(' ');
        disp('����������� ������ 3');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/cbfOut_15.wav']);
        sound(snd, fs);
    pause(10) 
  g=input('������ ����� ������� (�� 1 �� 5, ����� �������):  ');
  gn=input('������ ����� ������:  ');
  gw=input('������ �������� �������� �� ��������:  ');
    tempsig(3)=g;
    tempnoise(3)=gn;
    tempwhole(3)=gw;

    disp(' ');
    disp('����������� ������ 4');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/LCMVout1_15.wav']);
        sound(snd, fs);
    pause(10) 
   g=input('������ ����� ������� (�� 1 �� 5, ����� �������):  ');
  gn=input('������ ����� ������:  ');
  gw=input('������ �������� �������� �� ��������:  ');
    tempsig(4)=g;
    tempnoise(4)=gn;
    tempwhole(4)=gw;
    
    disp(' ');
    disp('����������� ������ 5');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/LCMVout2_15.wav']);
        sound(snd, fs);
    pause(10) 
   g=input('������ ����� ������� (�� 1 �� 5, ����� �������):  ');
  gn=input('������ ����� ������:  ');
  gw=input('������ �������� �������� �� ��������:  ');
    tempsig(5)=g;
    tempnoise(5)=gn;
    tempwhole(5)=gw;
    
    disp(' ');
    disp('����������� ������ 6');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/LCMVout3_15.wav']);
        sound(snd, fs);
    pause(10) 
   g=input('������ ����� ������� (�� 1 �� 5, ����� �������):  ');
  gn=input('������ ����� ������:  ');
  gw=input('������ �������� �������� �� ��������:  ');
    tempsig(6)=g;
    tempnoise(6)=gn;
    tempwhole(6)=gw;
    
       
    if SNR == 10
        dB10 = tempsig;
        dB10n = tempnoise;
        dB10w = tempwhole;
    elseif SNR == 0
        dB0 = tempsig;
        dB0n = tempnoise;
        dB0w = tempwhole;
    else
        dBm10 = tempsig;
        dBm10n = tempnoise;
        dBm10w = tempwhole;
    end
end    
    
        %% ����� ���������� � ����  
d=[b, '_15'];
save(d,'dB10', 'dB0', 'dBm10','dB10n', 'dB0n', 'dBm10n','dB10w', 'dB0w', 'dBm10w'); 
 
    %% �������� ������� ������ ����� �������
    figure
    plot(dB10,'k'); grid; ylabel('DMOS'); xlabel('��� �������'); title('������ ����� �������, ��� 15');
     hold on;
    plot(dB0,'--b'); grid; ylabel('DMOS');
     hold on;
    plot(dBm10,'-.r'); grid; ylabel('DMOS');
    legend('SNR = 10 dB','SNR = 0 dB','SNR = -10 dB');
    
    %% �������� ������� ������ ���� ������
    figure
    plot(dB10n,'k'); grid; ylabel('DMOS'); xlabel('��� �������'); title('������ ���� ������, ��� 15');
     hold on;
    plot(dB0n,'--b'); grid; ylabel('DMOS');
     hold on;
    plot(dBm10n,'-.r'); grid; ylabel('DMOS');
    legend('SNR = 10 dB','SNR = 0 dB','SNR = -10 dB');

        %% �������� ������� ������ ���������� ��������
    figure
    plot(dB10w,'k'); grid; ylabel('DMOS'); xlabel('��� �������'); title('������ ���������� ��������, ��� 15');
     hold on;
    plot(dB0w,'--b'); grid; ylabel('DMOS');
     hold on;
    plot(dBm10w,'-.r'); grid; ylabel('DMOS');
    legend('SNR = 10 dB','SNR = 0 dB','SNR = -10 dB');

