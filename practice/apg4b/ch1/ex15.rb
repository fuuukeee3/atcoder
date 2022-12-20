def sum(scores)
  scores.sum
end

def output(sum_a, sum_b, sum_c)
  puts sum_a * sum_b * sum_c
end

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

a_sum = sum(a)
b_sum = sum(b)
c_sum = sum(c)

output(a_sum, b_sum, c_sum)
