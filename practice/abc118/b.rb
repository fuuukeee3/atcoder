n, m = gets.chomp.split(" ").map(&:to_i)
m_ary = Array.new(m) { 0 }
n.times do
  arr = gets.chomp.split(" ").map(&:to_i)
  arr.shift
  arr.each do |a|
    m_ary[a - 1] += 1
  end
end

p m_ary.select { |mm| mm == n }.size
