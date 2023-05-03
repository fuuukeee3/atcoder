n = gets.chomp.to_i
arr = []
n.times do
  p = gets.chomp.to_f
  arr << p ** 2
end

sum = 0
flg = true
arr.sort.reverse.each do |a|
  if flg
    sum += a
  else
    sum -= a
  end
  flg = !flg
end
puts sum * Math::PI
