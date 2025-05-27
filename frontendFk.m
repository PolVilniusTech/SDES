% 12 bits of text for a round and 8 bits of subkey 
function [output] = frontendFk(in,subkey)
	L = in(1:floor(end/2));
	R = in(floor(end/2)+1:end);
	F = backendFk(R,subkey);
	
	left = R;
	right = xor(L, F);
	output = horzcat(left,right);
end	