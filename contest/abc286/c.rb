n, a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

scores = []
n.times do
  i = 0
  j = -1
  count = 0
  (n / 2).times do
    count += 1 if s[i] != s[j]
    i += 1
    j -= 1
  end
  scores << count

  s = s[1..-1] + [s[0]]
end

results = []
scores.each_with_index do |score, index|
  results << index * a + score * b
end

puts results.min
