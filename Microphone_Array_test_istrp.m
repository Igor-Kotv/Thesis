%% ������ ����� �������� �������, �� ��������� ������� ���������

%   ���������: ��������  �. �. ����������
tic
clear
fs = 44100;
          
       disp('��������������� ������� 1');
       
        pause(0.5) 
             snd=audioread('cleanmusic.wav');
        sound(snd, fs);

    pause(10) 
         g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB10(1)=g;
    
     disp('��������������� ������� 2');
           pause(0.5) 
             snd=audioread('10dB/Array_istrp.wav');
        sound(snd, fs);
    pause(10) 
  g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB10(2)=g;
    
        disp('��������������� ������� 3');
          pause(0.5) 
             snd=audioread('10dB/cbfOut_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB10(3)=g;

      disp('��������������� ������� 4');
          pause(0.5) 
             snd=audioread('10dB/LCMVout1_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB10(4)=g;
    
     disp('��������������� ������� 5');
          pause(0.5) 
             snd=audioread('10dB/LCMVout2_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB10(5)=g;
    
     disp('��������������� ������� 6');
          pause(0.5) 
             snd=audioread('10dB/LCMVout3_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB10(6)=g;
    
     disp('��������������� ������� 7');
          pause(0.5) 
             snd=audioread('10dB/LCMVout4_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB10(7)=g;
    
     %% 0 ��
          
       disp('��������������� ������� 8');
       
        pause(0.5) 
             snd=audioread('cleanmusic.wav');
        sound(snd, fs);

    pause(10) 
         g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB0(1)=g;
    
     disp('��������������� ������� 9');
           pause(0.5) 
             snd=audioread('0dB/Array_istrp.wav');
        sound(snd, fs);
    pause(10) 
  g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB0(2)=g;
    
        disp('��������������� ������� 10');
          pause(0.5) 
             snd=audioread('0dB/cbfOut_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB0(3)=g;

      disp('��������������� ������� 11');
          pause(0.5) 
             snd=audioread('0dB/LCMVout1_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB0(4)=g;
    
     disp('��������������� ������� 12');
          pause(0.5) 
             snd=audioread('0dB/LCMVout2_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB0(5)=g;
    
     disp('��������������� ������� 13');
          pause(0.5) 
             snd=audioread('0dB/LCMVout3_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB0(6)=g;
    
     disp('��������������� ������� 14');
          pause(0.5) 
             snd=audioread('0dB/LCMVout4_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dB0(7)=g;
     
     %% -10 ��
     
   
       disp('��������������� ������� 15');
       
        pause(0.5) 
             snd=audioread('cleanmusic.wav');
        sound(snd, fs);

    pause(10) 
         g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dBm10(1)=g;
    
     disp('��������������� ������� 16');
           pause(0.5) 
             snd=audioread('-10dB/Array_istrp.wav');
        sound(snd, fs);
    pause(10) 
  g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dBm10(2)=g;
    
        disp('��������������� ������� 17');
          pause(0.5) 
             snd=audioread('-10dB/cbfOut_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dBm10(3)=g;

      disp('��������������� ������� 18');
          pause(0.5) 
             snd=audioread('-10dB/LCMVout1_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dBm10(4)=g;
    
     disp('��������������� ������� 19');
          pause(0.5) 
             snd=audioread('-10dB/LCMVout2_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dBm10(5)=g;
    
     disp('��������������� ������� 20');
          pause(0.5) 
             snd=audioread('-10dB/LCMVout3_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dBm10(6)=g;
    
     disp('��������������� ������� 21');
          pause(0.5) 
             snd=audioread('-10dB/LCMVout4_istrp.wav');
        sound(snd, fs);
   pause(10) 
    g=input('������ ������ �� 1 �� 5 (����� �� ����): ');   %���������� ������ � ���������� ����
    dBm10(7)=g;
 
    %% ����� ���������� � ����  
b=input('������ ��������� ���� ������� (� ������): ');
d=[b, '_istrp'];
save(d,'dB10', 'dB0', 'dBm10');    

    %% �������� ������
    figure
    stem(dB10); grid; ylabel('DMOS'); xlabel('��� �������'); title('������������ ������/��� 10 ��');
     figure
    stem(dB0); grid; ylabel('DMOS'); xlabel('��� �������'); title('������������ ������/��� 0 ��');
     figure
    stem(dBm10); grid; ylabel('DMOS'); xlabel('��� �������'); title('������������ ������/��� -10 ��');
    
        

toc



