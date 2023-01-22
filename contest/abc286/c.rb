n, a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

center = n / 2

scores = []
n.times do
  before = s[0...center]
  after = s[(center + 1)..-1]

  i = 0
  j = -1
  count = 0
  before.size.times do
    count += 1 if before[i] != after[j]
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
