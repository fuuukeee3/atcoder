n = gets.chomp.to_i
count = 0
(1..n).each do |nn|
  if !nn.to_s.include?("7") && !nn.to_s(8).include?("7")
    count += 1
  end
end

puts count