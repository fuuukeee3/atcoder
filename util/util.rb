# 配列の要素のすべての組み合わせ
arr = []
(1..arr.size).each do |i|
  arr.combination(i) do |c|
    puts c
  end
end
