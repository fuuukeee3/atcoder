n = gets.chomp.to_i
arr = []
(0..86).each do |i|
  if i == 0
    arr << 2
  elsif i == 1
    arr << 1
  else
    arr << arr[i-1] + arr[i-2]
  end
end

puts arr[n]