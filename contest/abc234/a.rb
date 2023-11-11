def f(t)
  t ** 2 + t * 2 + 3
end

t = gets.chomp.to_i
puts f(f(f(t)+t)+f(f(t)))