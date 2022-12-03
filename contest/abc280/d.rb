def fact(n)
  return n if n == 1
  n * fact(n - 1)
end

require "prime"

k = gets.chomp.to_i
pdiv = k.prime_division

if pdiv[-1][1] == 1
  puts pdiv[-1][0]
else
  count = 1
  loop do
    tmp = fact(count)
    if tmp % k == 0
      puts count
      return
    end
    count += 1
  end
end
