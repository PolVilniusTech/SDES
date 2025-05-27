%key as char or double
function [Key_a] = keyGenerationSDES(key, rodadas)
%key is expected to be 10 bits, that goes down to 8 bits
Key_a = eye(rodadas, 8);

for i=1:rodadas
	if isa(key,'char') == 1
        Key_a(i,:) = [str2double(key(1)) str2double(key(2))...
        str2double(key(3)) str2double(key(4)) str2double(key(5))...
        str2double(key(6)) str2double(key(7)) str2double(key(8))];
    else
        Key_a(i,:) = [key(1) key(2) key(3) key(4) key(5) key(6) key(7)...
        key(8)];
    end
    key=[key(2:end),key(1)];
end
end