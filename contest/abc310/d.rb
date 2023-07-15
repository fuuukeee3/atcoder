n, t, m = gets.chomp.split(" ").map(&:to_i)
bads = {}
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  (bads[a] ||= []) << b
  (bads[b] ||= []) << a
end

count = 0
# bit全探索
# 選択する/しないの2パタンに分類できる時
# サイズ n の重複順列をすべて生成
[0, 1].repeated_permutation(n).to_a.each do |bit|
  flg = true
  team = Array.new(t)
  team_a = []
  team_b = []
  bit.each_with_index do |b, index|
    if b == 1
      team_a << index + 1
    else
      team_b << index + 1
    end
  end

  next if team_a.size.zero? || team_b.size.zero?

  team_a.each do |a|
    next if bads[a].nil?
    bads[a].each do |bad|
      flg = false if team_a.include?(bad)
    end
  end

  team_b.each do |b|
    next if bads[b].nil?
    bads[b].each do |bad|
      flg = false if team_b.include?(bad)
    end
  end

  if flg
    p team_a
    p team_b
    p "###"
    count += 1
  end
end

puts count / 2
