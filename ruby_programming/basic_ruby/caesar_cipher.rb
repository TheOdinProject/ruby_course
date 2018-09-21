class CaesarCipher
def caesar_cipher(string, shift)
   @hash_of_letters={};  @value="a"; @output=[]
  (1..26).each{|key| @hash_of_letters[key]= @value; @value= @value.next}

string.split(" ").each do |word|
       word.chars.each do |char|
         key= @hash_of_letters.key(char.downcase)
         if !(key.nil?)
            new_key= key+shift
            if valid_new_key?(new_key)
              add_to_output(new_key, char)
           else
             add_to_output(shift-(26-key), char)
           end
        else
         @output << char
        end
  end
    @output << " "
 end
 @output.join
end

def valid_new_key? (key)
  key <= @hash_of_letters.size
end

def add_to_output (key, char)
new_char= @hash_of_letters[key]
("A".."Z").include?(char) ? @output<< new_char.upcase : @output<< new_char
end
end
c_cipher=CaesarCipher.new
puts c_cipher.caesar_cipher("What a String!",5)
