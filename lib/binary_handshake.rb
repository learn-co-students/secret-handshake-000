class SecretHandshake
	def initialize(code)
		@handshake = []
		@code_in_array = code.split('')
		if @code_in_array.size == 5
			@code_in_array.shift
			@reverse = true
		else
			@reverse = false
		end

		case @code_in_array.size
		when 1
			@handshake << "wink"
		when 2
			@handshake << "wink" if @code_in_array[1] == "1"
			@handshake << "double blink" if @code_in_array[0] == "1"
		when 3
			@handshake << "close your eyes" if @code_in_array[0] == "1"
			@handshake << "double blink" if @code_in_array[1] == "1"
			@handshake << "wink" if @code_in_array[2] == "1"
		when 4
			@handshake << "jump" if @code_in_array[0] == "1"
			@handshake << "close your eyes" if @code_in_array[1] == "1"
			@handshake << "double blink" if @code_in_array[2] == "1"
			@handshake << "wink" if @code_in_array[3] == "1"
		end
	end

	def commands
		@handshake
	end

end 
