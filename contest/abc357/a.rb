n, m = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)

count = 0
h.each do |hh|
  m -= hh
  if m >= 0
    count += 1
  else
    break
  end
end

puts count