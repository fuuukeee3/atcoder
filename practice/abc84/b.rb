a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp

puts s.match?(/[0-9]{#{a}}-[0-9]{#{b}}/) ? "Yes" : "No"
