def echo(say)
	"#{say}"
end

def shout(say)
	"#{say.upcase}"
end

def repeat(word, num = 2)
  return ([word] * num).join(" ")
end

def start_of_word(word, num)
	return word[0...num]
end

def first_word(string)
	return string.split[0...1].join(' ')
end

def titleize(string)
	string.capitalize.split.each{|i| big_words(i)}.join(' ')
end

def big_words(string)
	little_words = ["and", "over", "the"]
	if little_words.include?(string)
		return string
	else
		return string.capitalize!
end
end
