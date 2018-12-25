clc
clear
a = imread('a.jpeg');
imshow(a)
a = double(a);

%% x axis
filter=[-1 0 1;-2 0 2;-1 0 1];
for u=1:size(a,1)
    for v=1:size(a,2)
        z=0;
        for i=1:3
            for j=1:3
                if (u+i)>2 && (v+j) >2
                    if (u+i-2) <size(a,1)&& (v+j-2) <size(a,2)
                        z = z+a(u+i-2,v+j-2)*filter(i,j);
                    end
                end
            end
        end
        b(u,v) = z;
    end
end
b = uint8(b);
imshow(b);

%% y axis
filter=[-1 -2 -1;0 0 0;1 2 1];
for u=1:size(a,1)
    for v=1:size(a,2)
        z=0;
        for i=1:3
            for j=1:3
                if (u+i)>2 && (v+j) >2
                    if (u+i-2) <size(a,1)&& (v+j-2) <size(a,2)
                        z = z+a(u+i-2,v+j-2)*filter(i,j);
                    end
                end
            end
        end
        c(u,v) = z;
    end
end
c = uint8(c);
imshow(c)

%% summation
b = double(b);
c = double(c);
for u=1:size(a,1)
    for v=1:size(a,2)
        x = b(u,v)^2;
        y = c(u,v)^2;
        d(u,v) = sqrt(x+y);
    end
end
d = uint8(d);
imshow(d)