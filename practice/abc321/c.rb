k = gets.chomp.to_i
a321 = []

# bit全探索
# 選択する/しないの2パタンに分類できる時
# サイズ n の重複順列をすべて生成
[0, 1].to_a.repeated_permutation(10).to_a.each do |bit|
  indexes = []
  bit.each_with_index do |b, index|
    indexes << index if b == 1
  end

  a321 << indexes.sort.reverse.join("").to_i
end

puts a321.sort[k+1]
