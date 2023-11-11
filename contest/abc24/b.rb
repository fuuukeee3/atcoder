n, t = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.to_i
end

s = 0
e = 0
hash = {}
arr.each do |a|
  if a >= s && a <= e
    e = a + t
  else
    s = a
    e = s + t
  end
  hash[s] = e
end

sum = 0
hash.each do |k, v|
  sum += v - k
end

puts sum