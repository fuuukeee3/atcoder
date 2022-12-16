s = gets.chomp

total = s[0].to_i
i = 1
op = ""
while i < s.size
  if s[i] == "+" || s[i] == "-"
    op = s[i]
  else
    if op == "+"
      total += s[i].to_i
    elsif op == "-"
      total -= s[i].to_i
    end
  end

  i += 1
end

puts total
