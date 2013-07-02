class SecretNumber
	attr_accessor :number
	
	def initialize
		@number = rand(1..10)
	end
end

