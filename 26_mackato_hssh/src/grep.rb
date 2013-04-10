class Grep
  def self.grep(pattern, str, format = nil)
    if ret = str.match(pattern)
      ret = $1 || ret.to_s
      format ? format.sub('#{$1}', $1) : ret
    else
      nil
    end
  end
end
