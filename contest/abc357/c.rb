def carpet(k)
  if k == 0
    return "#"
  end

  if k == 1
    return "####.####"
  end

  if k > 1
    round = carpet(k - 1)
    carpet = []
    3.times do
      carpet << round
    end
    carpet << round

    tmp = []
    i = 3 ** (k - 1)
    i.times do
      tmp << "." * i
    end
    carpet << tmp.join("")

    carpet << round
    3.times do
      carpet << round
    end
    return carpet.join("")
  end
end

n = gets.chomp.to_i
p carpet(n)

# carpet(n).split("").each_with_index do |s, i|
#   print s
#   if (i + 1) % (3 ** n) == 0
#     puts
#   end
# end
# ans = ""
# carpet(n).each_slice(3) do |arr|
#   p arr
#   # arr[0].size.times do |i|
#   #   p arr
#   #   ans += arr.map { |a| a[i] }.join("")
#   #   ans += "\n"
#   # end
# end
# puts ans
# puts carpet(n).join("\n")
