n, m = gets.chomp.split(" ").map(&:to_i)
firework_days = gets.chomp.split(" ").map(&:to_i)

days = Array.new(n) { false }
firework_days.each do |i|
  days[i -1] = true
end

answers = []
tmp = 0
days.each do |d|
  if d
    tmp.downto(0).each do |t|
      answers << t
    end
    tmp = 0
  else
    tmp += 1
  end
end

puts answers.join("\n")