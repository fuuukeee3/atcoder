n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

high = 0
count = 0

arr.each do |a|
  if a >= high
    count += 1
    high = a
  end
end

puts count
