% Example script to prepare data for simulation run

year = 2013;

weather_data = readmatrix(strcat('I-',num2str(year),'.csv'));    %replace with relevant file name
load_data = readmatrix(strcat('I-load-',num2str(year), '.csv'));          %replace with relevant file name

% load wind speed data (hourly resolution, [m/s])
Data.wind.speed = weather_data(:,2)';
Data.wind.hour = 1:length(Data.wind.speed);

% load solar irradiance data (hourly resolution, [kW/m2] converted to [W/m2])
Data.solar.direct = weather_data(:,3)'*1000;     
Data.solar.diffuse = weather_data(:,4)'*1000;     
Data.solar.hour = 1:length(Data.solar.direct);

% load aggregate demand data (minute resolution, [W])
Data.varload.load = load_data(:,2)';
Data.varload.minute = 1:length(Data.varload.load);

save('Data.mat','Data')


