 # Transposition Cipher Decryption


 import math, pyperclip


 def main():

 myMessage = 'Cenoonommstmme oo snnio. s s c'

myKey = 4
plaintext = decryptMessage(myKey, myMessage)
 # Print with a | (called "pipe" character) after it in case

# there are spaces at the end of the decrypted message.

print(plaintext + '|')

pyperclip.copy(plaintext)