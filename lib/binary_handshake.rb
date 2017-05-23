# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.

class SecretHandshake

  def initialize(input)
    @input = input.to_i(2)
    @commands = []
  end

  def commands


    if (@input & 1).to_s(2) == "1"
      @commands << "wink"
    end

    if (@input & 2).to_s(2) == "10"
      @commands << "double blink"
    end

    if (@input & 4).to_s(2) == "100"
      @commands << "close your eyes"
    end

    if (@input & 8).to_s(2) == "1000"
      @commands << "jump"
    end

    if (@input & 16).to_s(2) == "10000"
      @commands.reverse!
    end

    @commands

  end

end