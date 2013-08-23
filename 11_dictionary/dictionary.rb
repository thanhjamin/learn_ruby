class Dictionary

	attr_accessor :entries

	def initialize(entries = {})
		@entries = entries
	end

	def add(entry)
		if entry.class == String
      	   entry = {entry => nil}
    	end
		entry.each do |x, y| 
		@entries[x] = y
		end
	end

	def keywords
		keyword = []

		@entries.each do |x, y|
		keyword << x
	end
		keyword.sort
	end

	def include?(x)
		@entries.keys.include?(x)
	end

	def find(word)
		hash = {}
		@entries.each do |x, y|
			if x[0...word.length] == word
				hash[x] = y
			end
		end
		hash
	end

	def printable
		@entries.sort.collect do |x, y|
			"[#{x}] \"#{y}\""
	end.join("\n")
end

end


