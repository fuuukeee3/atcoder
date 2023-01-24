n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

h = 0
count = 0
arr.each do |a|
  # p [count, a, h]
  if h < a
    count += a - h
  end
  h = a
end

puts count
