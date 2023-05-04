s = gets.chomp
t = gets.chomp
flg = true
s.size.times do |i|
  next if s[i] == t[i]
  if s[i] != t[i] && (s[i] != "@" && t[i] != "@")
    flg = false
    next
  end

  if s[i] == "@"
    flg = false unless %w[a t c o d e r @].include?(t[i])
  end
  if t[i] == "@"
    flg = false unless %w[a t c o d e r @].include?(s[i])
  end
end

puts flg ? "You can win" : "You will lose"