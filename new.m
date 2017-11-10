directory_in = '/home/simran/SMAI/Learning Instrument Recognition/Dataset/Waves/';

dir(directory_in);
d = dir(directory_in);
isub = [d(:).isdir];
nameFolds = {d(isub).name}';
nameFolds(ismember(nameFolds,{'.','..'})) = [];
size(nameFolds);
for i = 1:1
nums = [nameFolds{i,:}];
s = strcat(directory_in,nums);

allFiles = dir(s);
allNames = {allFiles.name};   
allNames(ismember(allNames,{'.','..'})) = [];

[rows, columns] = size(allNames);
disp(columns);

for j = 1:1
    audio_path = strcat(s,'/',[allNames{:,j}]);
    [y,Fs] = audioread(audio_path);
    
    
    dt = 1/Fs;
    t = 0:dt:(length(y)*dt)-dt;
    plot(t,y); xlabel('Seconds'); ylabel('Amplitude');
    figure
    %plot(psd(spectrum.PERIODOGRAM,y,'Fs',Fs,'NFFT',length(y)));
    
    %indices = find(abs(y)<0.0001);
    %disp(indices);
    
    
    
end    

end



