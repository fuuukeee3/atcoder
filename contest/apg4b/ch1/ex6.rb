a, op, b = gets.chomp.split(" ")
a = a.to_i
b = b.to_i

case op
when "+"
  puts a + b
when "-"
  puts a - b
when "*"
  puts a * b
when "/"
  if b != 0
    puts a / b
  else
    puts "error"
  end
else
  puts "error"
end
