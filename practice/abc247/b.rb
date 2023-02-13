n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.split(" ")
end

flat = arr.flatten
flg = true
arr.each do |a|
  if flat.count { |f| f == a[0] } > 1 && flat.count { |f| f == a[1] } > 1
    flg = false
    break
  end
end

if flg
  puts "Yes"
else
  puts "No"
end