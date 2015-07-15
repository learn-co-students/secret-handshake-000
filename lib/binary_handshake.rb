# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

require "pry"

class SecretHandshake

	def initialize(num)
		@num = num
	end

	def commands

		answer = []

		if @num[-1] == "1"
			answer<<"wink"
		end

		if @num.length >= 2 && @num[-2] == "1"
			answer<<"double blink"
		end
		
		if @num.length >= 3 && @num[-3] == "1"
			answer<<"close your eyes"
		end

		if @num.length >= 4 && @num[-4] == "1"
			answer<<"jump"
		end

		if @num.length == 5
			answer.reverse!
	  end

	  answer

	end

end