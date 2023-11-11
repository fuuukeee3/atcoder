n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.to_i
end

arr2 = arr.sort
max = arr2[-1]
max2 = arr2[-2]
arr.each do |a|
  if a == max
    puts max2
  else
    puts max
  end
end
