q = gets.chomp.to_i
stack = []
q.times do
  a, b = gets.chomp.split(" ")
  case a.to_i
  when 1
    stack.unshift(b)
  when 2
    puts stack[0]
  when 3
    stack.shift
  end
end
