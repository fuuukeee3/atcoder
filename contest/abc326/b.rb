n = gets.chomp.to_i

(n..919).each do |nn|
  na = nn.to_s.split("").map(&:to_i)
  if na[0] * na[1] == na[2]
    puts na.join("")
    break
  end
end