class Grep
  def initialize(re)
    @re = Regexp.new(re)
  end

  def grep( text )
    return nil unless @re =~ text
    return $1 if $1
    text
  end
end

if __FILE__ == $0

  require 'optparse'
  require 'time'

  # コマンドライン引数を解析してハッシュに格納する
  args = {}
  OptionParser.new do |parser|
    parser.on('-f', '--format FORMAT') {|v| args[:format] = v}
    parser.parse!(ARGV)
  end

  exit if ARGV.empty?
  arg = ARGV[0]
  grep = Grep.new(arg)

  while line = STDIN.gets
    puts line if grep.match?( line )
  end
end

