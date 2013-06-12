class PasswordChecker
  attr_accessor :password

  def check
    if score >= 8
      return "strong"
    elsif score >= 4
      return "normal"
    else
      return "weak"
    end
  end

  def score
    if self.password =~ /^\d+$/
      self.password.length / 2
    elsif self.password =~ /^[0-9a-zA-Z]+$/
      self.password.length
    else
      self.password.length * 2
    end
  end
end