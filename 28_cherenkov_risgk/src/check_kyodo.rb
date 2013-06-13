def check_kyodo(pw)

  point = 0
  point += 1 if pw.length >= 5
  point += 1 if pw.length >= 8
  point += 1 if pw =~ /[a-z]/
  point += 1 if pw =~ /[A-Z]/
  point += 1 if pw =~ /[0-9]/

  case point
  when 1..2
    kyodo = :low
  when 3..4
    kyodo = :mid  
  when 5
    kyodo = :high
  end

  return kyodo
end


p check_kyodo(ARGV[0])
# p check_kyodo("A") == :low
# p check_kyodo("1234AB") == :mid
# p check_kyodo("123456Ab") == :high