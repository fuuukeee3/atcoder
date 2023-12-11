n, m = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("").map(&:to_i)

l = 0
muse = 0
luse = 0
buy = 0

s.each do |sch|
  case sch
  when 0
    muse = 0
    luse = 0
  when 1
    if m == muse && l == luse
      buy += 1
      l += 1
      luse += 1
    elsif m != muse
      muse += 1
    else
      luse += 1
    end
  when 2
    if l == luse
      buy += 1
      l += 1
      luse += 1
    else
      luse += 1
    end
  end
end

puts buy