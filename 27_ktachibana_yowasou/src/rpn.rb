class RPN
  def self.calc(string)
    stack = []
    inputs = string.split(' ')
    while value = inputs.shift
      case
      when value =~ /\d+/
        stack.push value.to_i
      when value == '+'
        a = stack.pop
        b = stack.pop
        stack.push a + b
      end
    end
    stack.pop
  end
  def self.transform(string)
    stack = []
    inputs = string.split(' ')
    while value = inputs.shift
      case
      when value =~ /\d+/
        stack.push value.to_s
      when value == '+'
        stack.push inputs.shift
        stack.push value
      end
    end
    stack
  end
end

#((1 + 2) * (2 + 4)) + 5
#
#([1 2 +] * [2 4 +]) + 5
#
#(a * b) + 5
#
#[a b *] + 5
#
#c + 5
#
#c 5 +
#
#[a b *] 5 +
#
#a b * 5 +
#
#1 2 + 2 4 + * 5 +
