module FunWithStrings
  def palindrome?
   
   pal = self.downcase.gsub(/\W/, '')
   pal==pal.reverse
   
  end
  
  
  def count_words
    
    word = Hash.new(0)
    self.downcase.gsub(/[^a-z\s]/, '').split.each do |s|
      word[s]+=1
      
    end
    word
    
  end
  
  
  def anagram_groups
    
    self.downcase.split.group_by do |s|
      s.downcase.chars.sort
    end.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
