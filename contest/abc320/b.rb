s = gets.chomp
max = 0
(0...(s.size)).each do |i1|
  ((i1+1)..(s.size)).each do |i2|
    str = s[i1..i2]
    if str == str.reverse
      max = [max, str.size].max
    end
  end
end

puts max