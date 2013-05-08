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
end
