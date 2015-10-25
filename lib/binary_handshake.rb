require 'pry'

class SecretHandshake

  Binary_Handshake_Rules = ["wink", "double blink", "close your eyes", "jump", "reverse"]
  #{
  #  1 => "wink",
  #  10 => "double blink",
  #  100 => "close your eyes",
  #  1000 => "jump",
  #  10000 => "reverse"
  #}



  def initialize(binary_handshake)
    @binary_handshake = binary_handshake
  end

  def commands
    rules_index = 0
    rules = []
    @binary_handshake.split("").reverse.each{|bit|
      if bit == "1"
        #binding.pry
        rules << Binary_Handshake_Rules[rules_index]
      end
      rules_index += 1
    }
    if rules.include?("reverse")
      rules.delete("reverse")
      rules.reverse
    else
      rules
    end
  end

end
