%%for test one
%% for converting file types
%this is for file types named cam0_0000XX
%and will convert from cam0_000000 to cam0_000034
file_name = 'cam0_0000';
fromExtension = '.png';
toExtension = '.jpg';
last_number = 34;
for i=0:last_number
    if i<10
        number = strcat('0',int2str(i));
    else
        number = int2str(i);
    end
    final_name = strcat(file_name,number,fromExtension)
    I = imread(final_name);
    j = int2str(i+1);
    imageName = strcat(j,toExtension);
    imwrite(I,imageName);
end

%% for part two

%change to camera frame coords given
x = -20;
y = 40;
z = 60;

%change to focal length found after calibrating
fx = 882.70996;
fy = 881.74741;
%change to focal length found after calibrating
px = 513.92862;
py = 424.06439;

u = fx*x/z + px
v = fy*y/z + py

point = [u,v]