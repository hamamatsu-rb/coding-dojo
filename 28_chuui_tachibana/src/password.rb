class Password
  def check(password)
    if password.length <= 4
      return '弱'
    end

    checks = [upper?(password), lower?(password), number?(password), sign?(password)]

    if checks.one?
      return '弱'
    end
    if password.length >= 14 && checks.all?
      return '強'
    end
    '中'
  end

  def upper?(password)
    /[A-Z]/.match(password)
  end

  def lower?(password)
    /[a-z]/.match(password)
  end

  def number?(password)
    /[0-9]/.match(password)
  end

  def sign?(password)
    /[\ -\/:-@\[-\`\{-\~]/.match(password)
  end
end
