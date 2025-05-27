% plaintext 12 bit and key 10 bit
function [ciphertext]=SDESencryption(plaintext, key, rodadas)
plaintext = double(plaintext);
key = double(key);

[Key_a] = keyGenerationSDES(key, rodadas);

for i=1:rodadas
plaintext = frontendFk(plaintext, Key_a(i,:));
end

ciphertext = switchSW(plaintext);
end
