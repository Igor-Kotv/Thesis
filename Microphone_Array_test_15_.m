%% === Оцінка якості музичного сигналу на виході мікрофонного масиву ===
%
%   В даній програмі Microphone_Array_test_15_.m моделюється ситуація:
%   - напрямок на точкове джерело шуму становить 15 градусів;
%   - напрямок на джерело сигналу становить 0 градусів;
%
%   Що робиться в програмі:
% - для SNR=-10дБ,0дБ,+10дБ оцінюється:
%      1) якість сигналу;
%      2) ступінь придушення завади;
%      3) загальне враження від почутого.
% - при цьому для кожного значення SNR прослуховується 7 сигналів:
%    1) еталонний (незашумлений) музичний сигнал;
%    2) сигнал з виходу одиночного мікрофона;
%    3) сигнал з виходу DS-антени;
%    4) сигнал з виходу LDCM_1-антени;
%    5) сигнал з виходу LDCM_2-антени;
%    6) сигнал з виходу LDCM_3-антени;
%    7) сигнал з виходу LDCM_4-антени;

%  Розробник: аспирант Котвицький І.В., січень-лютий 2018 р.
%  Редагування: Продеус А.М., березень 2018 р.
%%
clc
clear

b=input('Введіть латиницею ваше прізвище (без лапок): ', 's');
disp(' ');
disp('Проводиться група дослідів для напрямку на заваду 15 градусів');
fs = 44100;

for SNR = 10:-10:-10
    tempsig = zeros(1,6);   % простір для оцінок якості сигналу
    tempnoise = zeros(1,6);   % простір для оцінок рівня завади
    tempwhole = zeros(1,6);   % простір для оцінок загального враження
       disp(' ');
       disp(['ВІДНОШЕННЯ СИГНАЛ-ШУМ SNR = ' num2str(SNR)]);
       disp(' ');
       disp('Ви слухаєте ЕТАЛОННИЙ музичний сигнал, його якість 5 балів');
        pause(0.5) 
             snd=audioread('cleanmusic.wav');
        sound(snd, fs);

    pause(10) 
       g = 5;
    tempsig(1)=g;
    tempnoise(1)=0;
    tempwhole(1)=g;
    
    disp(' ');
    disp('Прослухайте сигнал 2');
           pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/Array_15.wav']);
        sound(snd, fs);
    pause(10) 
  g=input('Оцініть якість сигналу (від 1 до 5, можна дробове):  ');
  gn=input('Оцініть рівень завади:  ');
  gw=input('Оцініть загальне враження від почутого:  ');
    tempsig(2)=g;
    tempnoise(2)=gn;
    tempwhole(2)=gw;

    disp(' ');
        disp('Прослухайте сигнал 3');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/cbfOut_15.wav']);
        sound(snd, fs);
    pause(10) 
  g=input('Оцініть якість сигналу (від 1 до 5, можна дробове):  ');
  gn=input('Оцініть рівень завади:  ');
  gw=input('Оцініть загальне враження від почутого:  ');
    tempsig(3)=g;
    tempnoise(3)=gn;
    tempwhole(3)=gw;

    disp(' ');
    disp('Прослухайте сигнал 4');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/LCMVout1_15.wav']);
        sound(snd, fs);
    pause(10) 
   g=input('Оцініть якість сигналу (від 1 до 5, можна дробове):  ');
  gn=input('Оцініть рівень завади:  ');
  gw=input('Оцініть загальне враження від почутого:  ');
    tempsig(4)=g;
    tempnoise(4)=gn;
    tempwhole(4)=gw;
    
    disp(' ');
    disp('Прослухайте сигнал 5');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/LCMVout2_15.wav']);
        sound(snd, fs);
    pause(10) 
   g=input('Оцініть якість сигналу (від 1 до 5, можна дробове):  ');
  gn=input('Оцініть рівень завади:  ');
  gw=input('Оцініть загальне враження від почутого:  ');
    tempsig(5)=g;
    tempnoise(5)=gn;
    tempwhole(5)=gw;
    
    disp(' ');
    disp('Прослухайте сигнал 6');
          pause(0.5) 
             snd=audioread([num2str(SNR) 'dB/LCMVout3_15.wav']);
        sound(snd, fs);
    pause(10) 
   g=input('Оцініть якість сигналу (від 1 до 5, можна дробове):  ');
  gn=input('Оцініть рівень завади:  ');
  gw=input('Оцініть загальне враження від почутого:  ');
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
    
        %% запис результатів у файл  
d=[b, '_15'];
save(d,'dB10', 'dB0', 'dBm10','dB10n', 'dB0n', 'dBm10n','dB10w', 'dB0w', 'dBm10w'); 
 
    %% побудова графіків оцінок якості сигналу
    figure
    plot(dB10,'k'); grid; ylabel('DMOS'); xlabel('Тип обробки'); title('Оцінка якості сигналу, кут 15');
     hold on;
    plot(dB0,'--b'); grid; ylabel('DMOS');
     hold on;
    plot(dBm10,'-.r'); grid; ylabel('DMOS');
    legend('SNR = 10 dB','SNR = 0 dB','SNR = -10 dB');
    
    %% побудова графіків оцінок рівня завади
    figure
    plot(dB10n,'k'); grid; ylabel('DMOS'); xlabel('Тип обробки'); title('Оцінка рівня завади, кут 15');
     hold on;
    plot(dB0n,'--b'); grid; ylabel('DMOS');
     hold on;
    plot(dBm10n,'-.r'); grid; ylabel('DMOS');
    legend('SNR = 10 dB','SNR = 0 dB','SNR = -10 dB');

        %% побудова графіків оцінок загального враження
    figure
    plot(dB10w,'k'); grid; ylabel('DMOS'); xlabel('Тип обробки'); title('Оцінка загального враження, кут 15');
     hold on;
    plot(dB0w,'--b'); grid; ylabel('DMOS');
     hold on;
    plot(dBm10w,'-.r'); grid; ylabel('DMOS');
    legend('SNR = 10 dB','SNR = 0 dB','SNR = -10 dB');

