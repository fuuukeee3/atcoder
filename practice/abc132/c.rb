n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

arr.sort!
mid = arr[arr.size / 2]
mid_index = arr.find_index { |a| a == mid }

if mid_index != n / 2
  puts 0
  return
end
puts ((arr[mid_index - 1] + 1)..mid).to_a.size
