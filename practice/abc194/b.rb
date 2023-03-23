n = gets.chomp.to_i
arr_a = []
arr_b = []
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  arr_a << a
  arr_b << b
end

ai = arr_a.find_index(arr_a.min)
bi = arr_b.find_index(arr_b.min)

unless ai == bi
  puts [arr_a.min, arr_b.min].max
  exit
end

same = arr_a.min + arr_b.min
aa = [arr_a.min, arr_b.sort[1]].max
bb = [arr_a.sort[1], arr_b.min].max

puts [same, aa, bb].min