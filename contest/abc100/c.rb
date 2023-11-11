n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

count = 0
arr.each do |a|
  while a.even?
    a /= 2
    count += 1
  end
end

puts count
