n, x = gets.chomp.split(" ").map(&:to_i)

def rec(n, x, l, s)
  return 1 if n == 0

  if x == 1
    return 0
  elsif x <= l[n - 1] + 1
    return rec(n - 1, x - 1, l, s)
  elsif x == l[n - 1] + 2
    return s[n - 1] + 1
  elsif x <= l[n - 1] * 2 + 2
    return rec(n - 1, x - l[n - 1] - 2, l, s) + s[n - 1] + 1
  else
    return s[n - 1] * 2 + 1
  end
end

l = [1] * (n + 1)
s = [1] * (n + 1)

(1..(n + 1)).each do |i|
  l[i] = l[i - 1] * 2 + 3
  s[i] = s[i - 1] * 2 + 1
end

puts rec(n, x, l, s)
