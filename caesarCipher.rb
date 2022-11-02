def caesar_cipher(string, shift)
    ascii = []
    cipher = ""
    arr = string.split("")
    arr.each do |letter|
        if letter.ord + shift >= 65 && letter.ord <= 90 || letter.ord >= 97 && letter.ord <= 122
            ascii.append(letter.ord + shift)        
       else
            ascii.append(letter)
       end
    #(letter.ord + shift) < 123 && (letter.ord + shift) > 64 ? ascii.append(letter.ord) : ascii.append(letter)
    end

    #puts ascii

    ascii.each do |ascii|
        cipher += ascii.chr
    end

    cipher
end

puts caesar_cipher("What a string!", 5)