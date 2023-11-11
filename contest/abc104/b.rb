s = gets.chomp

unless s[0] == "A"
  puts "WA"
  exit
end

unless s[2..-2].split("").count { |ss| ss == "C" } == 1
  puts "WA"
  exit
end

s.split("").each do |ss|
  next if ss == "A" || ss == "C"
  p
  unless ('a'..'z').to_a.include?(ss)
    puts "WA"
    exit
  end
end

puts "AC"



