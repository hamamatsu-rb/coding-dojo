class Greprb
  def ptn
    ARGV[0]
  end
  def greprep(s)
    rp1 = Regexp.new(ptn)
    rp1 =~ s
    Regexp.last_match.to_a
  end
end

#greprb = Greprb.new
#p greprb.greprep(STDIN.gets)