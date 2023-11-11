s = gets.chomp
mae = s[0..1].to_i
usiro = s[2..3].to_i

if (mae >= 13 || mae == 0) && (usiro >= 1 && usiro <= 12)
  puts "YYMM"
elsif (mae >= 1 && mae <= 12) && (usiro >= 13 || usiro == 0)
  puts "MMYY"
elsif (mae >= 1 && mae <= 12) && (usiro >= 1 && usiro <= 12)
  puts "AMBIGUOUS"
else
  puts "NA"
end