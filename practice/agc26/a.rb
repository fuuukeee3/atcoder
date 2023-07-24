n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

before = -1
count = 0
arr.each do |a|
  if before == a
    count += 1
    before = -1
  else
    before = a
  end
end

puts count