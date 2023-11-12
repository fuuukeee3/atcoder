s = gets.chomp.split("")

stack = []
s.each do |c|
  unless c == "C"
    stack << c
    next
  end

  tmp = stack.pop.to_s
  tmp = stack.pop.to_s + tmp
  tmp = tmp + c

  if tmp == "ABC"
    next
  else
    tmp.split("").each do |t|
      stack << t
    end
  end
end

puts stack.join("")