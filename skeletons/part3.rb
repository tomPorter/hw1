def combine_anagrams(words)
   sorted_words = words.collect { |w| w.upcase.chars.sort.join }
   pairs = sorted_words.zip words
   anagrams = Hash.new{ |hash,k| hash[k] = []}
   pairs.each do |s,o|  
       anagrams[s] << o
   end
   return anagrams.values
end
