s = gets.chomp
count = 0
results = []
s.split("").each do |ss|
  if ss == "R"
    count += 1
  else
    count = 0
  end
  results << count
end

puts results.max