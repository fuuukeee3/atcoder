s1, s2 = gets.chomp.split("")
t1, t2 = gets.chomp.split("")

hash = {
  "A" => ["B", "E"],
  "B" => ["A", "C"],
  "C" => ["B", "D"],
  "D" => ["C", "E"],
  "E" => ["A", "D"],
}

flg1 = hash[s1].include?(s2)
flg2 = hash[t1].include?(t2)

if flg1 && flg2
  puts " Yes"
elsif !flg1 && !flg2
  puts "Yes"
else
  puts "No"
end
