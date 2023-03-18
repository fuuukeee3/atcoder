n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

total = 0
arr.each.with_index(1) do |a,index|
  if index % 2 == 0
    total += a - 1
  else
    total += a
  end
end

if total <= x
  puts "Yes"
else
  puts "No"
end