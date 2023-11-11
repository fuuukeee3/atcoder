o = gets.chomp.split("")
e = gets.chomp.split("")

s = ""
loop do
  break if o.size.zero? && e.size.zero?
  s += o.shift if o.size > 0
  s += e.shift if e.size > 0
end

puts s
