math = []
math << gets.chomp.split(" ").map(&:to_i)
math << gets.chomp.split(" ").map(&:to_i)
math << gets.chomp.split(" ").map(&:to_i)

place = [
  [0, 3, 6],
  [0, 4,],
  [0, 5, 7],
  [1, 3],
  [1, 4, 6, 7],
  [1, 5],
  [2, 3, 7],
  [2, 4],
  [2, 5, 6]
]

ok = 0
ng = 0
(0..8).to_a.permutation.each do |per|
  math2 = Array.new(8) { [] }

  flg = true
  per.each do |pp|
    div, mod = pp.divmod(3)
    a = math[div][mod]

    place[pp].each do |pl|
      math2[pl] << a
      flg = false if math2[pl].size == 2 && math2[pl].uniq.size == 1
    end
  end

  if flg
    ok += 1
  else
    ng += 1
  end

end

puts ok.to_f / (ok + ng)