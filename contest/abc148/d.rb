n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

count = 0
target = 1
arr.each do |n|
  if target == n
    target += 1
  else
    count += 1
  end
end

if target == 1
  puts -1
else
  puts count
end