n = gets.chomp
n.split("").each do |s|
  if s == "1"
    print "9"
  elsif s == "9"
    print "1"
  else
    print s
  end
end

puts