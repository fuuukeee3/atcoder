s = gets.chomp
hash = Hash.new { 0 }
s.split("").each do |ss|
  hash[ss] += 1
end

if hash.values.size == 2 && hash.values[0] == 2
  puts "Yes"
else
  puts "No"
end