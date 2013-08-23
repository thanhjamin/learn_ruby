class RPNCalculator

	attr_accessor :calculator

	def initialize(calculator = [])
		@calculator = calculator
	end

	def value
		calculator[calculator.length - 1]
	end

	def push(num)
		calculator << num.to_f
	end

	def plus
		calculator << (pop + pop)	
	end

	def minus
		if @calculator.count >= 2
			num1 = @calculator.pop
			num2 = @calculator.pop
			@calculator << num2 - num1
 	else
 		raise "calculator is empty"
 	end
 end

 	def divide
 		if @calculator.count >= 2
 			num1 = @calculator.pop
 			num2 = @calculator.pop
 			@calculator << num2 / num1
 		else 
 			raise "calculator is empty"
 	end
 end

 	def times
 		calculator << (pop * pop)
 	end


	def pop
  	num = calculator.pop
 	if num.nil? 
   	raise "calculator is empty"
 	end
  	num
 	end

 	def tokens(string)
 		string.split(" ").map do |x| 
 			if x == "+" || x == "-" || x == "*" || x == "/"
 				x.to_sym
 			else
 				x.to_i
 			end
 		end


 	end

	def evaluate(string)
		tokens(string).each do |x|
   		if x == :+
    		plus
   		elsif x == :-
    		minus
  	 	elsif x == :/
    		divide
   		elsif x == :*
    		times
   		else
    		push(x)
   		end
  	end
 		value
 	end
end 
