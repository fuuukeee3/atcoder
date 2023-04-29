n = gets.chomp.to_i
s = gets.chomp

x = 0
results = [0]
s.split("").each do |ss|
  if ss == "I"
    x += 1
  else
    x -= 1
  end
  results << x
end

puts results.max