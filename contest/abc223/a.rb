n = gets.chomp.to_i
if n.zero?
  puts "No"
  exit
end
puts  n % 100 == 0 ? "Yes" :"No"