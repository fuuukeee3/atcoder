s = gets.chomp
arr = ('a'..'z').to_a
s.split("").each_with_index do |ss, index|
  next if arr.include?(ss)
  puts index + 1
  break
end