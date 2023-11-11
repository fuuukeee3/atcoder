arr = []
5.times do
  arr << gets.chomp
end

arr.sort_by! { |a| a[-1] }
flg = true
sum = 0
arr.each do |a|
  if a[-1] == "0"
    sum += a.to_i
  elsif flg
    sum += a.to_i
    flg = false
  else
    sum += a.to_i.ceil(-1)
  end
end
puts sum