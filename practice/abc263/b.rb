n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
index = 2
arr.each do |a|
  hash[index] = a
  index += 1
end

count = 1
next_p = n
loop do
  if hash[next_p] == 1
    break
  end
  next_p = hash[next_p]
  count += 1
end

puts count
