h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split("")
end

results = []
# 行の圧縮
arr.each do |a|
  next if a.all? { |aa| aa == '.' }
  results << a
end

# 列の圧縮
indexes = []
(0...w).each do |i|
  columns = results.map { |r| r[i] }
  indexes << i if columns.all? { |c| c == '.' }
end

results.each do |row|
  row.each_with_index do |column, index|
    next if indexes.include?(index)
    print column
  end
  puts
end