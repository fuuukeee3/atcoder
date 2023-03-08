n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.to_i

result = 0
arr_sum = arr.sum
div, mod = x.divmod(arr_sum)
result += div * arr.size

arr.each do |a|
  result += 1
  mod -= a
  if mod < 0
    break
  end
end
puts result