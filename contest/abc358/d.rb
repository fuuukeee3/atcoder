n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

a.sort!
b.sort!

# p a
# p b
total = 0
bindexes = {}
b.each_with_index do |bb, index|
  bindexes[index] = false
end

b.each_with_index do |bb, bindex|
  index = a.bsearch_index { |x| x >= bb }
  next if index.nil?
  total += a[index]
  a.delete_at(index)
  bindexes[bindex] = true
end

if bindexes.all? { |k, v| v == true }
  puts total
else
  puts -1
end
