n = gets.chomp
n.gsub!(/0*\z/, '')

if n == n.reverse
  puts "Yes"
else
  puts "No"
end
