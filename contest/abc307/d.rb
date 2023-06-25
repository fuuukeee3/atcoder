n = gets.chomp.to_i
s = gets.chomp.split("")

stack = []
ans = []
flg = false

s.each do |ss|
  if ss == "("
    flg = true
  end

  if ss == ")"

    flg = false
  end

  if flg
    stack << ss
  else
    ans << ss
  end
end

p stack
p ans