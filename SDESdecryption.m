% ciphertext 12 bits and key 10 bits
function [plaintext]=SDESdecryption(ciphertext, key, rodadas)
ciphertext = double(ciphertext);
key = double(key);
j = 0;

[Key_a] = keyGenerationSDES(key, rodadas);

for i=1:rodadas
ciphertext = frontendFk(ciphertext, Key_a(rodadas-j,:));
j = j+1;
end

plaintext = switchSW(ciphertext);
end