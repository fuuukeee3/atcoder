pp, q = gets.chomp.split(" ")
hash = {
  "A" => 0,
  "B" => 1,
  "C" => 2,
  "D" => 3,
  "E" => 4,
  "F" => 5,
  "G" => 6,
}

arr = [0, 3, 1, 4, 1, 5, 9]
if hash[pp] <= hash[q]
  s = hash[pp]+1
  e = hash[q]
else
  s = hash[q] + 1
  e = hash[pp]
end
puts arr[s..e].sum