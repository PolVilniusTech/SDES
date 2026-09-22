Simplified Data Encryption Standard

Sub_keys = L8(L-Shift-1(Key)) per round
Sub_keys_rev = Reverse(Sub_keys)
Cipher_text = Switch(frontendFk(Plain_text, Sub_keys) per round)
Plain_text = Switch(frontendFk(Cipher_text, Sub_keys_rev) per round)

frontendFk - Feistel-like crypto-cipher structure
backendFk - Function on Feistel-like crypto-cipher structure
