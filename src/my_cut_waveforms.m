function  y_cut=my_cut_waveforms(mwindow,delta,tt_time,origin,y)
%cut waverforms at arrival time
Nsta=length(y);

for k=1:Nsta
%Cut waveforms at theoretical P-arrival times
start=(round((origin+tt_time(1,k))./delta));
stop=(round((origin+tt_time(1,k))./delta))+mwindow;

%Save to an array
y_cut(:,k)=y{1,k}(start:stop);
end % end of for loop
end % end of function