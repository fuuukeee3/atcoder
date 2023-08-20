require 'set'
h, w = gets.chomp.split(" ").map(&:to_i)
cookies = []
h.times do
  cookies << gets.chomp.split("")
end

rows = Set.new
columns = Set.new

loop do
  tmp_rows = []
  tmp_columns = []
  # 1 行が同じ色だったら
  cookies.each_with_index do |c, i|
    next if rows.include?(i)
    tmp_rows << i if c.uniq.size == 1
  end

  # 2 列が同じ色だったら
  cookies.transpose.each_with_index do |c, i|
    next if columns.include?(i)
    tmp_columns << i if c.uniq.size == 1
  end
  p [tmp_rows, tmp_columns]

  break if tmp_rows.size.zero? && tmp_columns.size.zero?
  rows << tmp_rows
  columns << tmp_columns
end

# 3 取り除く
rows.each_with_index do |r, i|
  cookies.delete_at(r - i)
end
cookies = cookies.transpose
columns.each_with_index do |c, i|
  cookies.delete_at(c - i)
end
puts cookies.flatten.size