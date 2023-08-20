m = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)

sum = d.sum + 1
target = (sum+1) / 2

d.each_with_index do |dd, i|
  if target > dd
    target -= dd
  else
    puts [i+1, dd - (dd - target)].join(" ")
    break
  end
end