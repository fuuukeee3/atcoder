n, m, t = gets.chomp.split(" ").map(&:to_i)

now = 0
battery = n.dup

m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)

  battery -= a - now
  if battery <= 0
    puts "No"
    exit
  end
  battery += b - a
  battery = n if battery > n

  now = b
end

puts battery - (t - now) > 0 ? "Yes" : "No"