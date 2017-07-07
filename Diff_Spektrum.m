t=0:0.001:100;
f=1000;
data1=10*sin(2*pi*30*t)+12*sin(2*pi*80*t);
data2=15*sin(2*pi*50*t)+19*sin(2*pi*200*t);

Int_start_hin=1;
Int_stop_hin=10000;
Int_start_back=20001;
Int_stop_back=30000;


Intervall_hin_1=data1(Int_start_hin:Int_stop_hin);
Intervall_back_1=data1(Int_start_back:Int_stop_back);
Intervall_hin_2=data2(Int_start_hin:Int_stop_hin);
Intervall_back_2=data2(Int_start_back:Int_stop_back);

X=2*fft(Intervall_hin_1)/length(Intervall_hin_1);
Spektrum_hin_1=abs(X(1:floor(length(X))/2));

X=2*fft(Intervall_back_1)/length(Intervall_back_1);
Spektrum_back_1=abs(X(1:floor(length(X))/2));

X=2*fft(Intervall_hin_2)/length(Intervall_hin_2);
Spektrum_hin_2=abs(X(1:floor(length(X))/2));

X=2*fft(Intervall_back_2)/length(Intervall_back_2);
Spektrum_back_2=abs(X(1:floor(length(X))/2));

f_max=f/2;
x_f=0:f/length(Intervall_hin_1):f_max-f/length(Intervall_hin_1);
figure(1)
plot(x_f,Spektrum_hin_1)
hold on;
plot(x_f,Spektrum_hin_2)

f_max=f/2;
x_f=0:f/length(Intervall_back_1):f_max-f/length(Intervall_back_1);
figure(2)
plot(x_f,Spektrum_back_1)
hold on;
plot(x_f,Spektrum_back_2)