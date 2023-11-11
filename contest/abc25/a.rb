s = gets.chomp.split("").sort
n = gets.chomp.to_i

arr = []
s.each do |s1|
  s.each do |s2|
    arr << s1 + s2
  end
end

puts arr[n - 1]