n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

current = 0
(0...n).each do |i|
  if current < arr[i]
    current = arr[i]
  else
    break
  end
end

puts current