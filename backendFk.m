% 6 bits of text and 8 bits of key
function [output] = backendFk(param, subkey)
    % expansion & permutation of param
    param = E(param);
    % xor'ing key with text
    param = xor(param, subkey);
    % first half text bits are used for S1 and second half - S2
    Lb = param(1:floor(end/2));
	Rb = param(floor(end/2)+1:end);
    %retrieval of bits from coordinates
    left = S1(Lb(1),Lb(2:4));
    right = S2(Rb(1),Rb(2:4));
    
    output = horzcat(left,right);
end