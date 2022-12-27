x, y, z = gets.chomp.split(" ").map(&:to_i)

flg = false
if 0 < x
  if 0 < y && y < x
    flg = true
  end

  if flg
    if y < z
      puts -1
      return
    end

    if 0 < z
      puts x.abs
      return
    else
      puts x.abs + (z.abs * 2)
      return
    end
  end
else
  if x < y && y < 0
    flg = true
  end

  if flg
    if z < y
      puts -1
      return
    end

    if z < 0
      puts x.abs
      return
    else
      puts x.abs + (z.abs * 2)
      return
    end
  end
end

puts x.abs
