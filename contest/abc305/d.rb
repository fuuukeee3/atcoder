n = gets.chomp.to_i
log = gets.chomp.split(" ").map(&:to_i)

# A[i]までに何分寝たか求める
tmp_sleep_time = Array.new(n)
log.each_with_index do |l, index|
  if index.zero?
    tmp_sleep_time[index] = 0
    next
  end

  if index.even?
    tmp_sleep_time[index] = tmp_sleep_time[index-1] + l - log[index-1]
  else
    tmp_sleep_time[index] = tmp_sleep_time[index-1]
  end
end

# x分までに何分寝たか


q = gets.chomp.to_i
q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
end

p tmp_sleep_time