n, m = gets.chomp.split(" ").map(&:to_i)
students = []
n.times do
  students << gets.chomp.split(" ").map(&:to_i)
end

checks = []
m.times do
  checks << gets.chomp.split(" ").map(&:to_i)
end

students.each do |student|
  min = 1000000000
  min_index = m + 1

  checks.each.with_index(1) do |check, index|
    man = (student[0] - check[0]).abs + (student[1] - check[1]).abs
    if man < min
      min = man
      min_index = index
    end
  end
  puts min_index
end