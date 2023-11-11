c = gets.chomp
if %w[a e i o u].include?(c)
  puts "vowel"
else
  puts "consonant"
end