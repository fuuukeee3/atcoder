w = gets.chomp.split("")
hash = Hash.new { 0 }
w.each do |ww|
  hash[ww] += 1
end

if hash.values.all? { |v| v.even? }
  puts "Yes"
else
  puts "No"
end
