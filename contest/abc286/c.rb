n, a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

sorted_array = []
tmp = []
n.times do
  sorted_array << s

  i = 0
  j = -1
  count = 0
  (n / 2).times do
    count += 1 if s[i] != s[j]
    i += 1
    j -= 1
  end
  tmp << count
  s = s[1..-1] + [s[0]]
end

# p sorted_array
# p tmp

# min = tmp.min
# p1 = n / 2 * b
results = []
tmp.each_with_index do |tt, index|
  results << index * a + tt * b
end
# p results
puts results.min
