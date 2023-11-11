n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

total = 0
before = 21
a.each do |aa|
  total += b[aa - 1]

  if before + 1 == aa
    total += c[before - 1]
  end
  before = aa
end

puts total
