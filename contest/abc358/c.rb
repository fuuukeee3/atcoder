n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split("")
end

# p arr

answers = []

# bit全探索
# 選択する/しないの2パタンに分類できる時
# サイズ n の重複順列をすべて生成
[0, 1].repeated_permutation(n).to_a.each do |bit|
  count = 0
  selects = []

  bit.each_with_index do |b, index|
    # 選択された場合の処理
    if b == 1
      count += 1
      selects << arr[index]
    end
  end

  # p selects
  tastes = Array.new(m) { false }
  selects.each do |select|
    select.each_with_index do |s, i|
      if s == "o"
        tastes[i] = true
      end
    end
  end
  if tastes.all?
    answers << count
  end
end

puts answers.min