n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

mod = arr[0][0] % 7
mod = 7 if mod == 0
if mod + m > 8
  puts "No"
  exit
end

(0...n).each do |i|
  next if i == 0

  if arr[i][0] != arr[i - 1][0] + 7
    puts "No"
    exit
  end

  (0...m).each do |j|
    next if j == 0

    if arr[i][j] != arr[i][j - 1] + 1
      puts "No"
      exit
    end
  end
end

puts "Yes"
