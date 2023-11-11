a, b = gets.chomp.split(" ").map(&:to_i)

hash = {
  7 => [1, 2, 4],
  6 => [2, 4],
  5 => [1, 4],
  4 => [4],
  3 => [1, 2],
  2 => [2],
  1 => [1],
}

arr = []
arr.concat(hash[a]) unless a.zero?
arr.concat(hash[b]) unless b.zero?
p arr.uniq.sum
