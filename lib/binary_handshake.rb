# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
class SecretHandshake
  attr_accessor :code

  def initialize(code)
    @code = code
  end

  def commands
    comm_arr = ["wink", "double blink", "close your eyes", "jump"]
    shake = []
    arr = code.split("")
    for element in arr
      if element != "0" && element != "1"
        return shake
      end
    end
    if arr.length < 5
      arr = arr.reverse
      arr.each_with_index{ |val,ind|
       if val == "1"
          shake << comm_arr[ind]
        end
      }
    elsif arr.length == 5
       arr.shift
       arr = arr.reverse
       arr.each_with_index{ |val,ind|
       if val == "1"
          shake << comm_arr[ind]
        end
      }
      shake = shake.reverse
    elsif arr.length > 5
      return shake
    end
    return shake
  end
end
