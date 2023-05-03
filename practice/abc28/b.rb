s = gets.chomp.split("")
hash = {
  "A" => 0,
  "B" => 0,
  "C" => 0,
  "D" => 0,
  "E" => 0,
  "F" => 0,
}
s.each do |ss|
  hash[ss] += 1
end

puts hash.values.join(" ")