n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

result = Array.new(n) { 'x' }

a = 0
s.each_with_index do |ss, index|
  if a == k
    break
  end
  if ss == 'o'
    result[index] = 'o'
    a += 1
  end
end

puts result.join("")