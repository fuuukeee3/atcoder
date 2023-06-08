n = gets.chomp.to_i
arr = []
hash = Hash.new { 0 }
n.times do
  a = gets.chomp.to_i
  arr << a
  hash[a] += 1
end

count = 0
arr.each do |a|
  if hash[a] != 0
    count += hash[a] - 1
    hash[a] -= 1
  end
end
puts count