def substr(s, t)
  count = 0
  tindex = 0
  (0...(s.size)).each do |i|
    loop do
      break if tindex >= t.size

      if s[i] == t[tindex]
        count += 1
        tindex += 1
        break
      else
        tindex += 1
      end
    end
  end
  count == s.size
end

def solve(t, t2)
  tsize = t.size
  t2size = t2.size

  # 等しい
  return true if t == t2

  # 1文字挿入
  if tsize + 1 == t2size && substr(t, t2)
    return true
  end

  # # 1文字削除
  if tsize - 1 == t2size && substr(t2, t)
    return true
  end

  # # 1文字変更
  if tsize == t2size
    count = 0
    (0..tsize).each do |i|
      count += 1 if t[i] != t2[i]
    end
    if count == 1
      return true
    end
  end

  false
end

n, t2 = gets.chomp.split(" ")
n = n.to_i

count = 0
answers = []
n.times do |i|
  s = gets.chomp
  if solve(s, t2)
    count += 1
    answers << i + 1
  end
end

puts count
puts answers.join(" ")
