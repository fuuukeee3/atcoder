n = gets.chomp.to_i
days = gets.chomp.split(" ").map(&:to_i)

count = 0
days.each.with_index(1) do |day, month|
  (1..day).each do|d|
    tmp = month.to_s.split("") + d.to_s.split("").flatten
    count += 1 if tmp.uniq.size == 1
  end
end

puts count