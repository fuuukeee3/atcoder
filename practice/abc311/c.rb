n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

g = Array.new(n + 1)
arr.each_with_index do |a, index|
  (g[index + 1] ||= []) << a
end


r = []
flgs = Hash.new { false }
a = [1]
nex = 1

n.times do
  if flgs[g[nex][0]]
    r << g[nex][0]
    flgs[g[nex][0]] = false
  end
  a << g[nex][0]
  flgs[a[-1]] = true
  nex = a[-1]
end

p a
p r
