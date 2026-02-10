% Version: SDES v0.1.
% this function use Feistel structure of classic SDES cipher
% this unified function are meant for SDES encryption and decryption
% this function could be used as following:
% I.  ciphertext = SDEScipher('000011110000', '1010101010', [11, 1])
% II. plaintext = SDEScipher('101100111001','1010101010', [11, 0])
% Input parameters are three parameters: 
% I.  twelve bits of text
% II. ten bits of secret key
% III.array of two elements from which first one define number 
% of rounds of SDES and second one - encryption operation as number one 
% and decryption operation as number zero
% Output parameter: depending by selected option bits of plaintext or
% bits of ciphertext.
function [bits] = SDEScipher(param, secret, options)
if nargin == 0
    error('Three parameters are required.');
elseif nargin == 1
    error('Three parameters are required.');
elseif nargin == 2
	error('Three parameters are required.');
end

if isa(param,'char') == 1
    aln=length(param);
    arr_p=eye(1, aln);
    for i=1:aln
        arr_p(i) = str2double(param(i));
    end
    param = arr_p;
end
if isa(secret,'char') == 1
    bln=length(secret);
    arr_s=eye(1, bln);
    for i=1:bln
        arr_s(i) = str2double(secret(i));
    end
    secret = arr_s;
end
if(options(2) == 0)
	ciphertext = param;
	key = secret;
	rodadas = options(1);
	% ciphertext 12 bits and key 10 bits
	bits=SDESdecryption(ciphertext, key, rodadas);
else
	plaintext = param;
	key = secret;
	rodadas = options(1);
	% plaintext 12 bits and key 10 bits
	bits=SDESencryption(plaintext, key, rodadas);
end
end
