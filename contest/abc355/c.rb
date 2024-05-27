n, t = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

bingo = []

grid = Array.new(n) { [] }
n.times do |n1|
  n.times do |n2|
    grid[n1][n2] = (n2 + 1) + (n1 * n)
  end
end

bingo = []
# 横
grid.each do |g|
  bingo << g
end

# 縦
grid.transpose.each do |g|
  bingo << g
end

# 斜め
naname1 = []
1.step(n*n, n +1).each do |a|
  naname1 << a
end
bingo << naname1

naname2 = []
n.step(n*n - (n - 1), n -1).each do |a|
  naname2 << a
end
bingo << naname2

# p bingo

turn = 0
result = []
arr.each_with_index do |a, index|
  result << a
  bingo.each do |b|
    if (b - result).size.zero?
      turn = index
      break
    end
  end
  if turn != 0
    break
  end
end

if turn != 0
  puts turn + 1
else
  puts -1
end