s = gets.chomp.split("")
t = gets.chomp

count = 0
loop do
  ss = s.shift
  if t[count].downcase == ss
    count += 1
  end

  if count == 3 || s.size == 0
    break
  end
end

if count == 3 || (count == 2 && t[2] == "X")
  puts "Yes"
else
  puts "No"
end