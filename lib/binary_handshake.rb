# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
require 'pry'
class SecretHandshake

  
  attr_accessor :number


  def initialize (num)
    @number = num.to_i
  end

  def commands
    result_array = []

    hs_hash = {
            1 => "wink",
            10 => "double blink",
            100 => "close your eyes",
            1000 => "jump",
            10000 => "reverse"
  }
      #checks if I have to reverse the final array and subtracts the 10000
      if @number >= 10000
        should_reverse = true
        @number -= 10000
      end

    while @number > 0


      last_key = nil
      last_value = nil

      hs_hash.each do |k, v|
        if @number >= k
          last_key = k
          last_value = v
        end
      end
      @number -= last_key.to_i

      #unshift because starting with largest number first and working down so I
      #want to add to the beginning of the array
      result_array.unshift(hs_hash[last_key])

    end

    if should_reverse
      result_array.reverse
    else
      result_array
    end
  end

end