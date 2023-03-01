n, k = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n) { 0 }
n.times do |i|
  arr[i] = gets.chomp.split(" ").map(&:to_i).sum
end

sorted_arr = arr.sort.reverse
arr.each do |a|
  sa = sorted_arr[k - 1] - a
  if sa <= 300
    puts "Yes"
  else
    puts "No"
  end
end