n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

answer = 0

a.each_with_index do |aa, index|
  next if index < 2

  if aa == a[index - 2]
    answer += 1
  end
end

puts answer
