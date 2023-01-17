arr = gets.chomp.split("").map(&:to_i)
op = ["+", "-"]

def calc(a, b, op)
  case op
  when "+"
    a + b
  when "-"
    a - b
  end
end

op.each do |o1|
  op.each do |o2|
    op.each do |o3|
      tmp1 = calc(arr[0], arr[1], o1)
      tmp2 = calc(tmp1, arr[2], o2)
      tmp3 = calc(tmp2, arr[3], o3)
      if tmp3 == 7
        puts "#{arr[0]}#{o1}#{arr[1]}#{o2}#{arr[2]}#{o3}#{arr[3]}=7"
        return
      end
    end
  end
end
