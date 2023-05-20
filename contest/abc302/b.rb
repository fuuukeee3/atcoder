h, w = gets.chomp.split(" ").map(&:to_i)
s = []
h.times do
  s << gets.chomp.split("")
end

# 0:下 1:右 2:上 3:左 4:右下 5:右上 6:左下 7:左上
dh = [1, 0, -1, 0, 1, -1, -1, 1]
dw = [0, 1, 0, -1, 1, 1, -1, -1]

h.times do |i|
  w.times do |j|
    next if s[i][j] != "s"

    # 右
    str = 's'
    j2 = j + 1
    4.times do
      break if j2 >= w
      str += s[i][j2]
      j2 += 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i + 1} #{j + i3 + 1}"
      end
      break
    end

    # 左
    str = 's'
    j2 = j - 1
    4.times do
      break if j2 < 0
      str += s[i][j2]
      j2 -= 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i + 1} #{j - i3 + 1}"
      end
      break
    end

    # 上
    str = 's'
    i2 = i - 1
    4.times do
      break if i2 < 0
      str += s[i2][j]
      i2 -= 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i - i3 + 1} #{j + 1}"
      end
      break
    end

    # 下
    str = 's'
    i2 = i + 1
    4.times do
      break if i2 >= h
      str += s[i2][j]
      i2 += 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i + i3 + 1} #{j + 1}"
      end
      break
    end

    # 右上
    str = 's'
    i2 = i - 1
    j2 = j + 1
    4.times do
      break if i2 < 0 || j2 >= w
      str += s[i2][j2]
      i2 -= 1
      j2 += 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i - i3 + 1} #{j + i3 + 1}"
      end
      break
    end

    # 右下
    str = 's'
    i2 = i + 1
    j2 = j + 1
    4.times do
      break if i2 >= h || j2 >= w
      str += s[i2][j2]
      i2 += 1
      j2 += 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i + i3 + 1} #{j + i3 + 1}"
      end
      break
    end

    # 左上
    str = 's'
    i2 = i - 1
    j2 = j - 1
    4.times do
      break if i2 < 0 || j2 < 0
      str += s[i2][j2]
      i2 -= 1
      j2 -= 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i - i3 + 1} #{j - i3 + 1}"
      end
      break
    end

    # 左下
    str = 's'
    i2 = i + 1
    j2 = j - 1
    4.times do
      break if i2 >= h || j2 < 0
      str += s[i2][j2]
      i2 += 1
      j2 -= 1
    end

    if str == "snuke"
      5.times do |i3|
        puts "#{i + i3 + 1} #{j - i3 + 1}"
      end
      break
    end
  end
end