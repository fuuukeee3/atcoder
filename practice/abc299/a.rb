n = gets.chomp.to_i
s = gets.chomp.split("")

flg = false
s.each do |ss|
  flg = !flg if ss == "|"

  if ss == "*" && flg
    puts "in"
    exit
  end
end

puts "out"