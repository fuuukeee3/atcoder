n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

if arr.include?(0)
  puts 0
  exit
end

sum = 1
arr.each do |a|
  sum *= a
  if sum > 1000000000000000000
    puts -1
    exit
  end
end

puts sum