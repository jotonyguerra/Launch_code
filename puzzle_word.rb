def print_puzzle(word, guessed=[])
  word.each_char do |char|
    if guessed.include?(char)
      print "#{char}"
    else
      print "-"
    end
  end
end
print_puzzle("perimeter", ["p", 'e'])
