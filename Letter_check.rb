def letter_check(word, letter_count)
      frequency = Hash.new(0)
    word.each_char do |x| 
        next unless x =~/\w/
        frequency[x] += 1
    end
    if letter_count == frequency
    return true
else 
	return false
end
end