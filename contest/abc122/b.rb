s = gets.chomp
arr = []
(0...s.size).each do |i|
  (i...s.size).each do |j|
    if s[i..j] =~ /^[ACGT]*$/
      arr << s[i..j]
    end
  end
end

max = 0
arr.each do |a|
  max = [max, a.size].max
end
puts max