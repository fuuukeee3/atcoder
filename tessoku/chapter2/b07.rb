t = gets.chomp.to_i
n = gets.chomp.to_i

arr =  Array.new(t+1){0}
n.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  arr[l] += 1
  arr[r] -= 1
end

sum = [0]
arr.each_with_index do |a, index|
  sum << a + sum[index]
end

(1..t).each do |i|
  puts sum[i]
end