n = gets.chomp.to_i
s = gets.chomp

unless s.include?("-o")
  puts -1
  exit
end
unless s.include?("o-")
  puts -1
  exit
end

puts [s.split("-").map(&:size).max, s.split("-").reverse.map(&:size).max].max

