#Use of ASCII for letters in order to not hardcode the alphabet: 65..90 = A-Z / 97..122 = a-z

def caesar_cipher(str, shift)
    encryption = ""
    str.each_char do |char| #enumerates string without having to convert to array first
      if char.ord.between?(97, 122) || char.ord.between?(65, 90) #only converts letters from the string
        message = char.ord + shift
        
        message -= 26 if (message >= 91 && char.ord <91) || message > 122 #allows for text wrapping z-a/Z-A
        encryption += message.chr
      else
        encryption += char #adds all other non-letter characters to the encrypted message
      end
    end
    encryption #return encrypted message
  end
  
  puts caesar_cipher("Hello World!", 12) #=> Tqxxa Iadxp!
  