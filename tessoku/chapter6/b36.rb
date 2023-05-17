n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
on = s.count { |ss| ss == "1" }

if (k.even? && on.even?) || (k.odd? && on.odd?)
  puts "Yes"
else
  puts "No"
end