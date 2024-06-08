s = gets.chomp

count = s.split("").count { |ss| ('a'..'z').include?(ss) }

if count > s.size / 2
  puts s.downcase
else
  puts s.upcase
end
