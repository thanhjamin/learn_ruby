class Temperature

	def initialize(options = {})
    @fahrenheit = options[:f] || options[:c] * (9/5.to_f) + 32
    @celsius = options[:c] || (options[:f] - 32) * (5/9.to_f)
  	end
	
	def in_fahrenheit
		@fahrenheit
    end

    def in_celsius
    	@celsius
    end	

   def self.from_celsius(celsius)
        self.new(:c => celsius)
    end

    def self.from_fahrenheit(fahrenheit)
        self.new(:f => fahrenheit)
    end

end

class Celsius < Temperature
    def initialize(celsius)
        super(:c => celsius)
    end
end

class Fahrenheit < Temperature
    def initialize(fahrenheit)
        super(:f => fahrenheit)
    end
end

	



		
