% Parameter file for backprojection        %
%                                          %
% ---------- M. Mesimeri 10/2019 --------- %

%path to waveforms
mydata='/Array_Detection/Backprojection/DATA';
%-------------------------------------------------------------------------
% Parallel settings
workers=32;                 %Set number of cores to work on a local machine
%-------------- Filtering parameters --------------------------------------
type='high';                %'low', 'high', 'bandpass'
lcorner=1;                  % lower corner frequency
hcorner=1;                  % higher corner frequency
%--------------------------------------------------------------------------
%Cut waveforms [in seconds]
start=0;     %time before theoretical pick                     
stop=3;      %time after theoretical pick
%--------------------------------------------------------------------------
% Choose beam type [1-4]:
beam_type=4;  % 1:linear  2:2nd root  3:3rd root  4:4th root
%--------------------------------------------------------------------------
%Define grid points for plotting only
%travel times should be calculated using arrival_times.m
%Minimum  - Maximum - Latitude
minlat=38.4; maxlat=39.4;  inclat=0.01;
%Minimum  - Maximum - Longitude 
minlon=-113; maxlon=-112.0; inclon=0.01;
%Minimum - Maximum - Depth [km]
mindepth=2.0; maxdepth=3.0; incdepth=1.0;
%Minimum - Maximum - Origin time [sec] [time before the detection]
minorigin=0; maxorigin=2; incorigin=0.05;