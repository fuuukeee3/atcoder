n = gets.chomp.to_i

[0, 1].repeated_permutation(n).to_a.each do |bit|
  arr = []
  bit.each_with_index do |b, index|
    arr << b
    # 選択された場合の処理
    if b == 1
    end
  end
  p arr
end