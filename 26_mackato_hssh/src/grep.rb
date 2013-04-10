class Grep
  def self.grep(pattern, str)
    if (ret = str.match(pattern).to_s) == ""
      nil
    else
      ret
    end
  end
end
