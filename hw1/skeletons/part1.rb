#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  temp = str.upcase.gsub(/[^a-zA-Z]/,'')
  temp == temp.reverse
end

def count_words(str)
  temp = str.downcase.gsub(/[^a-zA-Z ]/,'')
  words = temp.split
  h = Hash.new(0)
  words.each {|w| h[w] += 1}
  h
end
