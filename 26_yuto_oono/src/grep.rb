class Grep
  def initialize(re)
    @re = Regexp.new(re)
  end

  def match?( text )
    @re =~ text
  end

end

if __FILE__ == $0
  exit if ARGV.empty?
  arg = ARGV[0]
  grep = Grep.new(arg)

  while line = STDIN.gets
    puts line if grep.match?( line )
  end
end

