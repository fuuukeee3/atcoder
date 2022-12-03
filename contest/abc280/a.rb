# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

h, w = gets.chomp.split(" ").map(&:to_i)

count = 0
h.times do |hh|
  a = gets.chomp.split("")
  a.each do |aa|
    count += 1 if aa == "#"
  end
end

puts count
