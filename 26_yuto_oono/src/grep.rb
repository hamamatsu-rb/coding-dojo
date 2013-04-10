
class Grep

  def initialize(re)
    @re = Regexp.new(re)
  end

  def match?( text )
    @re =~ text
  end

end
