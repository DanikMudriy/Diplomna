

# the string to be encrypted/decrypted
message = 'цъщврююгеэя'

# the encryption/decryption key
key = 21

# tells the program to encrypt or decrypt
mode = 'encrypt' # set to 'encrypt' or 'decrypt'

# every possible symbol that can be encrypted
LETTERS = 'абвгдеєжзийклмнопрстуфхцчшщьэюя' #pip install pyperclip

# stores the encrypted/decrypted form of the message
translated = ''

# capitalize the string in message
message = message.upper()

# run the encryption/decryption code on each symbol in the message string
for symbol in message:
    if symbol in LETTERS:
        # получаем зашифрованный (или расшифрованный) номер для этого символа
        num = LETTERS.find(symbol) # получаем номер символа
        if mode == 'encrypt':
            num = num + key
        elif mode == 'decrypt':
            num = num - key

        # обрабатывать перенос, если num больше, чем длина
        # LETTERS or less than 0
        if num >= len(LETTERS):
            num = num - len(LETTERS)
        elif num < 0:
            num = num + len(LETTERS)

        # добавить символ зашифрованного/расшифрованного номера в конце переведенного
        translated = translated + LETTERS[num]

    else:
        # Просто добавляет символ 
        translated = translated + symbol

# выводит зашифрованную/расшифрованную строку на экран
print(translated)

