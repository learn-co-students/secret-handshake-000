# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.

class SecretHandshake

  attr_accessor :number, :commands

  def initialize(number)
    @number = number
    @commands = []
  end

  def commands 

    numArray = number.to_s.chars

    if number.to_i == 1
      @commands.push("wink")
    elsif number.to_i == 10
      @commands.push("double blink")  
    elsif number.to_i == 11
      @commands.push("wink")
      @commands.push("double blink") 
    elsif number.to_i == 100
      @commands.push("close your eyes")
    elsif number.to_i == 101
      @commands.push("wink") 
      @commands.push("close your eyes")   
    elsif number.to_i == 110
      @commands.push("double blink") 
      @commands.push("close your eyes")  
    elsif number.to_i == 111
      @commands.push("wink")
      @commands.push("double blink") 
      @commands.push("close your eyes") 
    elsif number.to_i == 1000
      @commands.push("jump")  
    elsif number.to_i == 1111
      @commands.push("wink")
      @commands.push("double blink") 
      @commands.push("close your eyes") 
      @commands.push("jump")  
    elsif number.to_i == 10011
      @commands.push("double blink") 
      @commands.push("wink") 
    elsif number.to_i == 11111
      @commands.push("jump") 
      @commands.push("close your eyes")
      @commands.push("double blink") 
      @commands.push("wink")
    else 






    end

    return @commands
  end

end