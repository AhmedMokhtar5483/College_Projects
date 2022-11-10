clear;
clc;

% [1] initialize variables and matrices
fs=44100;                       %The freq. of training data
windowL = round(0.03*fs);       %The window length for mfcc and pitch
overlapL = round(0.025*fs);     %The overlap length between windows 
W=[200 20000];                  %To initialize the band of bandpass filter

audio_test1=zeros(65536,20);    %Initialize a matrix to get my test audio in it
audio_test2=zeros(65536,20);    %Initialize a matrix to get my firend's test audio in it
audio_test3=zeros(65536,20);    %Initialize a matrix to get my firend2's test audio in it

melC = zeros(292,14,10);        %Initialize a matrix to get the 14 mfcc features in it
f0=zeros(292,10);               %Initialize a matrix to get the pitch feature init

move =zeros(65536,10);          %Initialize a matrix to get my move training audio in it
left =zeros(65536,10);          %Initialize a matrix to get my left training audio in it
stop =zeros(65536,10);          %Initialize a matrix to get my stop training audio in it
right=zeros(65536,10);          %Initialize a matrix to get my right training audio in it

move_features =zeros(10,4380);  %Initialize a matrix to store my move features in it
left_features =zeros(10,4380);  %Initialize a matrix to store my left features in it
stop_features =zeros(10,4380);  %Initialize a matrix to store my stop features in it
right_features=zeros(10,4380);  %Initialize a matrix to store my right features in it
test_features1=zeros(20,4380);  %Initialize a matrix to store my test features in it
test_features2=zeros(20,4380);  %Initialize a matrix to store my firend's test features in it
test_features3=zeros(20,4380);  %Initialize a matrix to store my firend2's test features in it

move_labels=["Move";"Move";"Move";"Move";"Move";"Move";"Move";"Move";"Move";"Move";];
left_labels=["Left";"Left";"Left";"Left";"Left";"Left";"Left";"Left";"Left";"Left";];
stop_labels=["Stop";"Stop";"Stop";"Stop";"Stop";"Stop";"Stop";"Stop";"Stop";"Stop";];
right__labels=["Right";"Right";"Right";"Right";"Right";"Right";"Right";"Right";"Right";"Right";];

% [2] read the train data then extract the features from it

% 1)Read move voices then Make its lenght (2^16)
m_1 = audioread( 'Train_move_1.mp3');                  
m=65536-length(m_1 ) ; move(:,1) =[m_1 ;zeros(m,1)];
m_2 = audioread( 'Train_move_2.mp3');
m=65536-length(m_2 ) ; move(:,2) =[m_2 ;zeros(m,1)];
m_3 = audioread( 'Train_move_3.mp3');
m=65536-length(m_3 ) ; move(:,3) =[m_3 ;zeros(m,1)];
m_4 = audioread( 'Train_move_4.mp3');
m=65536-length(m_4 ) ; move(:,4) =[m_4 ;zeros(m,1)];
m_5 = audioread( 'Train_move_5.mp3');
m=65536-length(m_5 ) ; move(:,5) =[m_5 ;zeros(m,1)];
m_6 = audioread( 'Train_move_6.mp3');
m=65536-length(m_6 ) ; move(:,6) =[m_6 ;zeros(m,1)];
m_7 = audioread( 'Train_move_7.mp3');
m=65536-length(m_7 ) ; move(:,7) =[m_7 ;zeros(m,1)];
m_8 = audioread( 'Train_move_8.mp3');
m=65536-length(m_8 ) ; move(:,8) =[m_8 ;zeros(m,1)];
m_9 = audioread( 'Train_move_9.mp3');
m=65536-length(m_9 ) ; move(:,9) =[m_9 ;zeros(m,1)];
m_10= audioread('Train_move_10.mp3');
m=65536-length(m_10) ; move(:,10)=[m_10;zeros(m,1)];

for n= 1:10

    [b,a]=butter(2 , W/fs);                     % Bandpass digital filter design
    move(:,n) = filter(b,a,move(:,n));          %Apply the filter on move
    melC(:,:,n) = mfcc(move(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);   %Extracting mfcc features 
    f0(:,n) = pitch(move(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);      %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;            %Add them together
    move_features(n,:) = horzcat(feat(:)).';    %Make each word one feature row vector  
    
end

% 2)Read left voices then Make its lenght (2^16)
l_1 = audioread( 'Train_left_1.mp3');
m=65536-length(l_1 ) ; left(:,1) =[l_1 ;zeros(m,1)];
l_2 = audioread( 'Train_left_2.mp3');
m=65536-length(l_2 ) ; left(:,2) =[l_2 ;zeros(m,1)];
l_3 = audioread( 'Train_left_3.mp3');
m=65536-length(l_3 ) ; left(:,3) =[l_3 ;zeros(m,1)];
l_4 = audioread( 'Train_left_4.mp3');
m=65536-length(l_4 ) ; left(:,4) =[l_4 ;zeros(m,1)];
l_5 = audioread( 'Train_left_5.mp3');
m=65536-length(l_5 ) ; left(:,5) =[l_5 ;zeros(m,1)];
l_6 = audioread( 'Train_left_6.mp3');
m=65536-length(l_6 ) ; left(:,6) =[l_6 ;zeros(m,1)];
l_7 = audioread( 'Train_left_7.mp3');
m=65536-length(l_7 ) ; left(:,7) =[l_7 ;zeros(m,1)];
l_8 = audioread( 'Train_left_8.mp3');
m=65536-length(l_8 ) ; left(:,8) =[l_8 ;zeros(m,1)];
l_9 = audioread( 'Train_left_9.mp3');
m=65536-length(l_9 ) ; left(:,9) =[l_9 ;zeros(m,1)];
l_10= audioread('Train_left_10.mp3');
m=65536-length(l_10) ; left(:,10)=[l_10;zeros(m,1)];

for n= 1:10

    [b,a]=butter(2 , W/fs);                     % Bandpass digital filter design
    left(:,n) = filter(b,a,left(:,n));          %Apply the filter on left
    melC(:,:,n) = mfcc(left(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);   %Extracting mfcc features
    f0(:,n) = pitch(left(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);      %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;            %Add them together
    left_features(n,:) = horzcat(feat(:)).';    %Make each word one feature row vector
    
end

% 3)Read stop voices then Make its lenght (2^16)
s_1 = audioread( 'Train_stop_1.mp3');
m=65536-length(s_1 ) ; stop(:,1) =[s_1 ;zeros(m,1)];  
s_2 = audioread( 'Train_stop_2.mp3');
m=65536-length(s_2 ) ; stop(:,2) =[s_2 ;zeros(m,1)];
s_3 = audioread( 'Train_stop_3.mp3');
m=65536-length(s_3 ) ; stop(:,3) =[s_3 ;zeros(m,1)];
s_4 = audioread( 'Train_stop_4.mp3');
m=65536-length(s_4 ) ; stop(:,4) =[s_4 ;zeros(m,1)];
s_5 = audioread( 'Train_stop_5.mp3');
m=65536-length(s_5 ) ; stop(:,5) =[s_5 ;zeros(m,1)];
s_6 = audioread( 'Train_stop_6.mp3');
m=65536-length(s_6 ) ; stop(:,6) =[s_6 ;zeros(m,1)];
s_7 = audioread( 'Train_stop_7.mp3');
m=65536-length(s_7 ) ; stop(:,7) =[s_7 ;zeros(m,1)];
s_8 = audioread( 'Train_stop_8.mp3');
m=65536-length(s_8 ) ; stop(:,8) =[s_8 ;zeros(m,1)];
s_9 = audioread( 'Train_stop_9.mp3');
m=65536-length(s_9 ) ; stop(:,9) =[s_9 ;zeros(m,1)];
s_10= audioread('Train_stop_10.mp3');
m=65536-length(s_10) ; stop(:,10)=[s_10;zeros(m,1)];

for n= 1:10

    [b,a]=butter(2 , W/fs);                     % Bandpass digital filter design
    stop(:,n) = filter(b,a,stop(:,n));          %Apply the filter on stop
    melC(:,:,n) = mfcc(stop(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);   %Extracting mfcc features
    f0(:,n) = pitch(stop(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);      %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;            %Add them together
    stop_features(n,:) = horzcat(feat(:)).';    %Make each word one feature row vector
    
end

% 4)Read right voices then Make its lenght (2^16)
r_1 = audioread( 'Train_right_1.mp3');
m=65536-length(r_1 ) ; right(:,1) =[r_1 ;zeros(m,1)];  
r_2 = audioread( 'Train_right_2.mp3');
m=65536-length(r_2 ) ; right(:,2) =[r_2 ;zeros(m,1)];
r_3 = audioread( 'Train_right_3.mp3');
m=65536-length(r_3 ) ; right(:,3) =[r_3 ;zeros(m,1)];
r_4 = audioread( 'Train_right_4.mp3');
m=65536-length(r_4 ) ; right(:,4) =[r_4 ;zeros(m,1)];
r_5 = audioread( 'Train_right_5.mp3');
m=65536-length(r_5 ) ; right(:,5) =[r_5 ;zeros(m,1)];
r_6 = audioread( 'Train_right_6.mp3');
m=65536-length(r_6 ) ; right(:,6) =[r_6 ;zeros(m,1)];
r_7 = audioread( 'Train_right_7.mp3');
m=65536-length(r_7 ) ; right(:,7) =[r_7 ;zeros(m,1)];
r_8 = audioread( 'Train_right_8.mp3');
m=65536-length(r_8 ) ; right(:,8) =[r_8 ;zeros(m,1)];
r_9 = audioread( 'Train_right_9.mp3');
m=65536-length(r_9 ) ; right(:,9) =[r_9 ;zeros(m,1)];
r_10= audioread('Train_right_10.mp3');
m=65536-length(r_10) ; right(:,10)=[r_10;zeros(m,1)];

for n= 1:10

    [b,a]=butter(2 , W/fs);                     % Bandpass digital filter design
    right(:,n) = filter(b,a,right(:,n));        %Apply the filter on right
    melC(:,:,n) = mfcc(right(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);  %Extracting mfcc features
    f0(:,n) = pitch(right(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);
    feat = [ melC(:,:,n),f0(:,n) ] ;            %Add them together
    right_features(n,:) = horzcat(feat(:)).';   %Make each word one feature row vecto
    
end

labels=[move_labels ; left_labels ; stop_labels ; right__labels];           %join all labels together
features=[move_features ; left_features ; stop_features ; right_features];  %join all features together

% [3] Train the data by KNN
KNN = fitcknn(features,labels, ...
    'Distance','spearman', ...
    'NumNeighbors',25, ...
    'DistanceWeight','squaredinverse');

k = KNN.NumNeighbors;       
c = cvpartition(40,'KFold',k);
partitionedModel = crossval(KNN,'CVPartition',c);
validationAccuracy = 1 - kfoldLoss(partitionedModel,'LossFun','ClassifError');
fprintf('\nValidation accuracy = %.2f%%\n', validationAccuracy*100);    %To get validation accrecy

% [4] Testing data

% 1)Read my testing voices then Make its lenght (2^16)
t_1 =audioread('Test_move_1.mp3');
m=65536-length(t_1 );audio_test1(:,1) =[t_1 ;zeros(m,1)];
t_2 =audioread('Test_move_2.mp3');
m=65536-length(t_2 );audio_test1(:,2) =[t_2 ;zeros(m,1)];
t_3 =audioread('Test_move_3.mp3');
m=65536-length(t_3 );audio_test1(:,3) =[t_3 ;zeros(m,1)];
t_4 =audioread('Test_move_4.mp3');
m=65536-length(t_4 );audio_test1(:,4) =[t_4 ;zeros(m,1)];
t_5 =audioread('Test_move_5.mp3');
m=65536-length(t_5 );audio_test1(:,5) =[t_5 ;zeros(m,1)];
t_6 =audioread('Test_left_1.mp3');
m=65536-length(t_6 );audio_test1(:,6) =[t_6 ;zeros(m,1)];
t_7 =audioread('Test_left_2.mp3');
m=65536-length(t_7 );audio_test1(:,7) =[t_7 ;zeros(m,1)];
t_8 =audioread('Test_left_3.mp3');
m=65536-length(t_8 );audio_test1(:,8) =[t_8 ;zeros(m,1)];
t_9 =audioread('Test_left_4.mp3');
m=65536-length(t_9 );audio_test1(:,9) =[t_9 ;zeros(m,1)];
t_10=audioread('Test_left_5.mp3');
m=65536-length(t_10);audio_test1(:,10)=[t_10;zeros(m,1)];
t_11=audioread('Test_stop_1.mp3');
m=65536-length(t_11);audio_test1(:,11)=[t_11;zeros(m,1)];
t_12=audioread('Test_stop_1.mp3');
m=65536-length(t_12);audio_test1(:,12)=[t_12;zeros(m,1)];
t_13=audioread('Test_stop_1.mp3');
m=65536-length(t_13);audio_test1(:,13)=[t_13;zeros(m,1)];
t_14=audioread('Test_stop_1.mp3');
m=65536-length(t_14);audio_test1(:,14)=[t_14;zeros(m,1)];
t_15=audioread('Test_stop_1.mp3');
m=65536-length(t_15);audio_test1(:,15)=[t_15;zeros(m,1)];
t_16=audioread('Test_right_1.mp3');
m=65536-length(t_16);audio_test1(:,16)=[t_16;zeros(m,1)];
t_17=audioread('Test_right_2.mp3');
m=65536-length(t_17);audio_test1(:,17)=[t_17;zeros(m,1)];
t_18=audioread('Test_right_3.mp3');
m=65536-length(t_18);audio_test1(:,18)=[t_18;zeros(m,1)];
t_19=audioread('Test_right_4.mp3');
m=65536-length(t_19);audio_test1(:,19)=[t_19;zeros(m,1)];
t_20=audioread('Test_right_5.mp3');
m=65536-length(t_20);audio_test1(:,20)=[t_20;zeros(m,1)];

disp ('My voice recognition')
disp ('First test : Move')

for n= 1:5

    [b,a]=butter(2 , W/fs);                             % Bandpass digital filter design
    audio_test1(:,n) = filter(b,a,audio_test1(:,n));    %Apply the filter on move
    melC(:,:,n) = mfcc(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together 
    test_features1(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[MOVE_LABEL,MOVE_POSTERIOR] = predict(KNN,test_features1(1:5,:));   %Predict move test voices
disp(MOVE_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(MOVE_POSTERIOR);

disp ('second test : Left')
for n= 6:10

    [b,a]=butter(2 , W/fs);                             % Bandpass digital filter design
    audio_test1(:,n) = filter(b,a,audio_test1(:,n));    %Apply the filter on left
    melC(:,:,n) = mfcc(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together 
    test_features1(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[LEFT_LABEL,LEFT_POSTERIOR] = predict(KNN,test_features1(6:10,:));   %Predict left test voices
disp(LEFT_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(LEFT_POSTERIOR);

disp ('Third test : Stop')
for n= 11:15

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test1(:,n) = filter(b,a,audio_test1(:,n));    %Apply the filter on stop
    melC(:,:,n) = mfcc(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together 
    test_features1(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[STOP_LABEL,STOP_POSTERIOR] = predict(KNN,test_features1(11:15,:));   %Predict stop test voices
disp(STOP_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(STOP_POSTERIOR);

disp ('Fourth test : Right')
for n= 16:20

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test1(:,n) = filter(b,a,audio_test1(:,n));    %Apply the filter on right
    melC(:,:,n) = mfcc(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test1(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together 
    test_features1(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[RIGHT_LABEL,RIGHT_POSTERIOR] = predict(KNN,test_features1(16:20,:));   %Predict right test voices
disp(RIGHT_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(RIGHT_POSTERIOR);

n=0;
for i=1:5       %To calculate the accuracy of test data
    
    if(MOVE_LABEL(i) == "Move")
        n=n+1;
    end
    if(LEFT_LABEL(i) == "Left")
        n=n+1;
    end
    if(STOP_LABEL(i) == "Stop")
        n=n+1;
    end
    if(RIGHT_LABEL(i)=="Right")
        n=n+1;
    end
    
end
n=(n/20)*100;
fprintf('My test voice accuracy is %i%%\n\n',n)

% 2)Read my friend's voices then Make its lenght (2^16)
t_1 =audioread('Test2_move_1.mp3');
m=65536-length(t_1 );audio_test2(:,1) =[t_1 ;zeros(m,1)];
t_2 =audioread('Test2_move_2.mp3');
m=65536-length(t_2 );audio_test2(:,2) =[t_2 ;zeros(m,1)];
t_3 =audioread('Test2_move_3.mp3');
m=65536-length(t_3 );audio_test2(:,3) =[t_3 ;zeros(m,1)];
t_4 =audioread('Test2_move_4.mp3');
m=65536-length(t_4 );audio_test2(:,4) =[t_4 ;zeros(m,1)];
t_5 =audioread('Test2_move_5.mp3');
m=65536-length(t_5 );audio_test2(:,5) =[t_5 ;zeros(m,1)];
t_6 =audioread('Test2_left_1.mp3');
m=65536-length(t_6 );audio_test2(:,6) =[t_6 ;zeros(m,1)];
t_7 =audioread('Test2_left_2.mp3');
m=65536-length(t_7 );audio_test2(:,7) =[t_7 ;zeros(m,1)];
t_8 =audioread('Test2_left_3.mp3');
m=65536-length(t_8 );audio_test2(:,8) =[t_8 ;zeros(m,1)];
t_9 =audioread('Test2_left_4.mp3');
m=65536-length(t_9 );audio_test2(:,9) =[t_9 ;zeros(m,1)];
t_10=audioread('Test2_left_5.mp3');
m=65536-length(t_10);audio_test2(:,10)=[t_10;zeros(m,1)];
t_11=audioread('Test2_stop_1.mp3');
m=65536-length(t_11);audio_test2(:,11)=[t_11;zeros(m,1)];
t_12=audioread('Test2_stop_2.mp3');
m=65536-length(t_12);audio_test2(:,12)=[t_12;zeros(m,1)];
t_13=audioread('Test2_stop_3.mp3');
m=65536-length(t_13);audio_test2(:,13)=[t_13;zeros(m,1)];
t_14=audioread('Test2_stop_4.mp3');
m=65536-length(t_14);audio_test2(:,14)=[t_14;zeros(m,1)];
t_15=audioread('Test2_stop_5.mp3');
m=65536-length(t_15);audio_test2(:,15)=[t_15;zeros(m,1)];
t_16=audioread('Test2_right_1.mp3');
m=65536-length(t_16);audio_test2(:,16)=[t_16;zeros(m,1)];
t_17=audioread('Test2_right_2.mp3');
m=65536-length(t_17);audio_test2(:,17)=[t_17;zeros(m,1)];
t_18=audioread('Test2_right_3.mp3');
m=65536-length(t_18);audio_test2(:,18)=[t_18;zeros(m,1)];
t_19=audioread('Test2_right_4.mp3');
m=65536-length(t_19);audio_test2(:,19)=[t_19;zeros(m,1)];
t_20=audioread('Test2_right_5.mp3');
m=65536-length(t_20);audio_test2(:,20)=[t_20;zeros(m,1)];

disp ('My frind''s voice recognition')
disp ('First test : Move')
for n= 1:5

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test2(:,n) = filter(b,a,audio_test2(:,n));    %Apply the filter on move
    melC(:,:,n) = mfcc(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features2(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[MOVE_LABEL,MOVE_POSTERIOR] = predict(KNN,test_features2(1:5,:));   %Predict move test voices
disp(MOVE_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(MOVE_POSTERIOR);

disp ('second test : Left')
for n= 6:10

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test2(:,n) = filter(b,a,audio_test2(:,n));    %Apply the filter on left
    melC(:,:,n) = mfcc(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features1(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[LEFT_LABEL,LEFT_POSTERIOR] = predict(KNN,test_features1(6:10,:));   %Predict left test voices
disp(LEFT_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(LEFT_POSTERIOR);

disp ('Third test : Stop')
for n= 11:15

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test2(:,n) = filter(b,a,audio_test2(:,n));    %Apply the filter on stop
    melC(:,:,n) = mfcc(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features2(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[STOP_LABEL,STOP_POSTERIOR] = predict(KNN,test_features2(11:15,:));   %Predict stop test voices
disp(STOP_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(STOP_POSTERIOR);

disp ('Fourth test : Right')
for n= 16:20

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test2(:,n) = filter(b,a,audio_test2(:,n));    %Apply the filter on right
    melC(:,:,n) = mfcc(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test2(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features2(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[RIGHT_LABEL,RIGHT_POSTERIOR] = predict(KNN,test_features2(16:20,:));   %Predict right test voices
disp(RIGHT_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(RIGHT_POSTERIOR);


n=0;
for i=1:5       %To calculate the accuracy of test data
    
    if(MOVE_LABEL(i) == "Move")
        n=n+1;
    end
    if(LEFT_LABEL(i) == "Left")
        n=n+1;
    end
    if(STOP_LABEL(i) == "Stop")
        n=n+1;
    end
    if(RIGHT_LABEL(i)=="Right")
        n=n+1;
    end
    
end
n=(n/20)*100;
fprintf('My friend''s test voice accuracy is %i%%\n\n',n)

% 3)Read my friend2's voices then Make its lenght (2^16)
t_1 =audioread('Test3_move_1.mp3');
m=65536-length(t_1 );audio_test3(:,1) =[t_1 ;zeros(m,1)];
t_2 =audioread('Test3_move_2.mp3');
m=65536-length(t_2 );audio_test3(:,2) =[t_2 ;zeros(m,1)];
t_3 =audioread('Test3_move_3.mp3');
m=65536-length(t_3 );audio_test3(:,3) =[t_3 ;zeros(m,1)];
t_4 =audioread('Test3_move_4.mp3');
m=65536-length(t_4 );audio_test3(:,4) =[t_4 ;zeros(m,1)];
t_5 =audioread('Test3_move_5.mp3');
m=65536-length(t_5 );audio_test3(:,5) =[t_5 ;zeros(m,1)];
t_6 =audioread('Test3_left_1.mp3');
m=65536-length(t_6 );audio_test3(:,6) =[t_6 ;zeros(m,1)];
t_7 =audioread('Test3_left_2.mp3');
m=65536-length(t_7 );audio_test3(:,7) =[t_7 ;zeros(m,1)];
t_8 =audioread('Test3_left_3.mp3');
m=65536-length(t_8 );audio_test3(:,8) =[t_8 ;zeros(m,1)];
t_9 =audioread('Test3_left_4.mp3');
m=65536-length(t_9 );audio_test3(:,9) =[t_9 ;zeros(m,1)];
t_10=audioread('Test3_left_5.mp3');
m=65536-length(t_10);audio_test3(:,10)=[t_10;zeros(m,1)];
t_11=audioread('Test3_stop_1.mp3');
m=65536-length(t_11);audio_test3(:,11)=[t_11;zeros(m,1)];
t_12=audioread('Test3_stop_2.mp3');
m=65536-length(t_12);audio_test3(:,12)=[t_12;zeros(m,1)];
t_13=audioread('Test3_stop_3.mp3');
m=65536-length(t_13);audio_test3(:,13)=[t_13;zeros(m,1)];
t_14=audioread('Test3_stop_4.mp3');
m=65536-length(t_14);audio_test3(:,14)=[t_14;zeros(m,1)];
t_15=audioread('Test3_stop_5.mp3');
m=65536-length(t_15);audio_test3(:,15)=[t_15;zeros(m,1)];
t_16=audioread('Test3_right_1.mp3');
m=65536-length(t_16);audio_test3(:,16)=[t_16;zeros(m,1)];
t_17=audioread('Test3_right_2.mp3');
m=65536-length(t_17);audio_test3(:,17)=[t_17;zeros(m,1)];
t_18=audioread('Test3_right_3.mp3');
m=65536-length(t_18);audio_test3(:,18)=[t_18;zeros(m,1)];
t_19=audioread('Test3_right_4.mp3');
m=65536-length(t_19);audio_test3(:,19)=[t_19;zeros(m,1)];
t_20=audioread('Test3_right_5.mp3');
m=65536-length(t_20);audio_test3(:,20)=[t_20;zeros(m,1)];

disp ('My friend2''s voice recognition')
disp ('First test : Move')
for n= 1:5

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test3(:,n) = filter(b,a,audio_test3(:,n));    %Apply the filter on move
    melC(:,:,n) = mfcc(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features3(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[MOVE_LABEL,MOVE_POSTERIOR] = predict(KNN,test_features3(1:5,:));   %Predict move test voices
disp(MOVE_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(MOVE_POSTERIOR);

disp ('second test : Left')
for n= 6:10

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test3(:,n) = filter(b,a,audio_test3(:,n));    %Apply the filter on left
    melC(:,:,n) = mfcc(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features3(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[LEFT_LABEL,LEFT_POSTERIOR] = predict(KNN,test_features3(6:10,:));   %Predict left test voices
disp(LEFT_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(LEFT_POSTERIOR);

disp ('Third test : Stop')
for n= 11:15

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test3(:,n) = filter(b,a,audio_test3(:,n));    %Apply the filter on stop
    melC(:,:,n) = mfcc(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features3(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[STOP_LABEL,STOP_POSTERIOR] = predict(KNN,test_features3(11:15,:));   %Predict stop test voices
disp(STOP_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(STOP_POSTERIOR);

disp ('Fourth test : Right')
for n= 16:20

    [b,a]=butter(2 , W/fs);                             %Bandpass digital filter design
    audio_test3(:,n) = filter(b,a,audio_test3(:,n));    %Apply the filter on right
    melC(:,:,n) = mfcc(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);    %Extracting mfcc features
    f0(:,n) = pitch(audio_test3(:,n),fs,'WindowLength',windowL,'OverlapLength',overlapL);       %Extracting pitch feature
    feat = [ melC(:,:,n),f0(:,n) ] ;                    %Add them together
    test_features3(n,:) = horzcat(feat(:)).';           %Make each word one feature row vector
    
end
[RIGHT_LABEL,RIGHT_POSTERIOR] = predict(KNN,test_features3(16:20,:));   %Predict right test voices
disp(RIGHT_LABEL);                   %Show the results
disp('With probability');
disp('     Left      Move      Right     Stop');
disp(RIGHT_POSTERIOR);


n=0;
for i=1:5       %To calculate the accuracy of test data
    
    if(MOVE_LABEL(i) == "Move")
        n=n+1;
    end
    if(LEFT_LABEL(i) == "Left")
        n=n+1;
    end
    if(STOP_LABEL(i) == "Stop")
        n=n+1;
    end
    if(RIGHT_LABEL(i)=="Right")
        n=n+1;
    end
    
end
n=(n/20)*100;
fprintf('My friend2''s test voice accuracy is %d%%\n\n',n);
