def substrings (string, dictionary)
words_of_string=string.downcase.split(" ")
hash=Hash.new(0)

words_of_string.each do |word|
  dictionary.each do |item|
    hash[item] += 1 if word.include? item
    end
  end

  p hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string="Howdy partner, sit down! How's it going?"

substrings(string, dictionary)
