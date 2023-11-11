s = gets.chomp
t = gets.chomp

if s == t
  puts "Yes"
  return
end

len = s.size
(0...(len - 1)).each do |i|
  ns = s.dup
  ns[i], ns[i + 1] = ns[i + 1], ns[i]
  if ns == t
    puts "Yes"
    return
  end
end

puts "No"
