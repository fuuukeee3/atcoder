n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

(0..2000).each do |i|
  next if arr.include?(i)

  puts i
  break
end