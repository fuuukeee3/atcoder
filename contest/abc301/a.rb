n = gets.chomp.to_i
s = gets.chomp

t = 0
a = 0

if n % 2 == 0
  win = n / 2
else
  win = n / 2 + 1
end

s.split("").each do |ss|
  if ss == "T"
    t += 1
  else
    a += 1
  end

  if t >= win
    puts "T"
    exit
  elsif a >= win
    puts "A"
    exit
  end
end
