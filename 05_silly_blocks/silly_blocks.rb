def reverser
	string = yield
	string.split.map(&:reverse).join(' ')
end

def adder(n = 1)
	yield + n
end

def repeater(n = 1)
	n.times do 
	yield
end
end