% 1 2 4 3 4 3 5 6
function [nkey] = E(in)
	nkey = horzcat(in(1), in(2), in(4), in(3), in(4), in(3), in(5), in(6));
end
