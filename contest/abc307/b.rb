n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp
end

flg = false
arr.combination(2).each do |a|
  if a[0] + a[1] == (a[0] + a[1]).reverse
    flg = true
  end
  if a[1] + a[0] == (a[1] + a[0]).reverse
    flg = true
  end
end

if flg
  puts "Yes"
else
  puts "No"
end