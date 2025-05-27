% row 0, 1
% column 000, 001, 010, 011, 100, 101, 110, 111
function [res] = S2(row, column)
if isa(row,'char') ~= 1
    row = num2str(row);
end
if isa(column,'char') ~= 1
    column = num2str(column);
end
if bin2dec(row) == 0
    x = 1;
elseif bin2dec(row) == 1
    x = 2;
end

y = bin2dec(column)+1;

matrize = [4 0 6 5 7 1 3 2; 5 3 0 7 6 2 1 4];

bin = matrize(x,y);
bin = dec2bin(bin,2);
bin = str2double(regexp(num2str(bin),'\d','match'));
bin = horzcat(bin);
[m,n] = size(bin);
while n ~= 3
    bin = horzcat(0, bin);
    [m,n] = size(bin);
end
res = horzcat(bin);
end
