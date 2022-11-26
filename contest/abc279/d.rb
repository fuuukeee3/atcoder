# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

a, b = gets.chomp.split(" ").map(&:to_i)

magic = 0
g = 1
min = nil
loop do
  time = (magic * b) + (a / Math.sqrt(g))
  # puts time
  if min.nil?
    min = time
  elsif time <= min
    min = time
  else
    break
  end

  magic += 1
  g += 1
end

puts min
