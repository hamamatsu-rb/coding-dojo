class Grep
  def self.grep(pattern, str)
    if ret = str.match(pattern)
      $1 || ret.to_s
    else 
      nil
    end
  end
end
