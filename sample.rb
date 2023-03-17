arr = gets.chomp.split(" ").map(&:to_i)
cumulative_sum = [0]

arr.each_with_index do |a, index|
  cumulative_sum << a + cumulative_sum[index]
end

p cumulative_sum