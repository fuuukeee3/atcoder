def ac(num)
  if num == 0
    return "b"
  end

  case num % 3
  when 1
    return "a" + ac(num - 1) + "c"
  when 2
    return "c" + ac(num - 1) + "a"
  when 0
    return "b" + ac(num - 1) + "b"
  end
end

n = gets.chomp.to_i
s = gets.chomp

(0..n).each do |i|
  if ac(i) == s
    puts i
    exit
  end
end

puts -1