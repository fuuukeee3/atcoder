n = gets.chomp.to_i

def rec(n)
  return [1] if n == 1

  tmp = rec(n-1)
  tmp + [n.to_s] + tmp
end

puts rec(n).join(" ")