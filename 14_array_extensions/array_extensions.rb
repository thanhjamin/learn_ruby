class Array
def sum
  result = 0
   self.each do |n|
    result += n 
   end
   result
 end

 def square
 	result = []
 	self.each do |n|
 	result << n**2
 	end
 	result
 end

 def square!
 	result = []
 	self.map! {|n| n**2 }
 end
end


