def ceasar(string,step)
  string=string.split(//)
  special = "?<>',?[]}{=-)(*&^%$#`~{}!"
  regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/
  new_string=[]
  length=string.length
  length.times do |i|
    if string[i]=~regex || string[i].match(/\s/)
     new_string << string[i]
    else
      if string[i].ord+step > 122
        new_string<< string[i].ord + step - 26
        new_string[i]=new_string[i].chr
       
      else
        
    
      new_string << string[i].ord+step
    
      new_string[i]=new_string[i].chr
    end
  end
  end
  
  puts new_string.join
  
  
  
  
  
end
ceasar("Hi mom i loze mou!",6)
