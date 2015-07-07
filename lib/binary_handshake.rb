# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
class SecretHandshake
  def initialize(bin_str)
    @commands = {1 => "wink", 2 => "double blink", 4 => "close your eyes", 8 => "jump"}
	bin_num = bin_str.to_i(2)
	bin_num == 0 ? @com_array = [] : @com_array = do_commands(bin_num)
  end
  def commands
    @com_array
  end
  
  private
  def do_commands(num)
    arr = @commands.each_with_object([]) {|(k,v), res| res << v if num & k == k}
	num & 16 == 16 ? arr.reverse! : arr
  end
end