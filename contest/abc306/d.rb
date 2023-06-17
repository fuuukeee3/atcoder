n = gets.chomp.to_i
sum = 0
poison = false

tmp0 = []
tmp1 = []

n.times do
  x, y = gets.chomp.split(" ").map(&:to_i)

  case x
  when 0 # 解毒
    if tmp1.max
      sum += tmp1.max
      tmp1 = []
      poison = true
    end

    # 正常ならおいしさがプラスの場合食べる
    if !poison && y > 0
      sum += y
      next
    end

    tmp0 << y
  when 1 # 毒
    if tmp0.max
      sum += tmp0.max
      tmp0 = []
      poison = false
    end

    # 死ぬから食べない
    next if poison

    tmp1 << y
  end
end
p [sum, tmp0, tmp1]
sum += tmp1.max || 0
sum += tmp0.max || 0
puts sum