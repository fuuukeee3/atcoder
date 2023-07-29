s = gets.chomp
if %w[ACE BDF CEG DFA EGB FAC GBD].include?(s)
  puts "Yes"
else
  puts "No"
end