s = gets.chomp
al = ('a'..'z').to_a

s.split("").each do |ss|
  al.delete(ss)
end

if al.size.zero?
  puts "None"
else
  puts al[0]
end