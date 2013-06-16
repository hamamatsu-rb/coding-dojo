class RPN
  def calc(expression)
    ary = expression.split()
    stack = []    
    ary.each do |c|
      case c
      when "+"
        stack << stack.pop + stack.pop
      when "-"
        stack << -(stack.pop - stack.pop)
      when "*"
        stack << stack.pop * stack.pop
      else
        stack << c.to_i
      end    
    end
    stack[0]
  end
end