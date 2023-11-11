n, a, b = gets.chomp.split(" ").map(&:to_i)
current = 0
n.times do
  s, d = gets.chomp.split(" ")
  dd = d.to_i
  move = if dd < a
           a
         elsif dd > b
           b
         else
           dd
         end

  if s == "East"
    current += move
  else
    current -= move
  end
end

if current == 0
  puts 0
elsif current > 0
  puts "East #{current}"
else
  puts "West #{current.abs}"
end