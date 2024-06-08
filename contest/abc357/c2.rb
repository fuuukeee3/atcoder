def carpet(k)
  if k == 0
    return ["#"]
  end

  if k == 1
    return [
      "###",
      "#.#",
      "###",
    ]
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
    carpet << tmp

    carpet << round
    3.times do
      carpet << round
    end
    return carpet
  end
end

n = gets.chomp.to_i
p carpet(n)
ans = []
carpet(n).each_slice(3 ** (n-1)) do |arr|
  arr.transpose.flatten.each_slice(3 ** (n - 1)) do |arr1|
    puts arr1.join("")
  end
end
# carpet(n).each_with_index do |a1, i1|
#   a1.each_with_index do |ss, i2|
#     index = (i1 % 3 ** (n - 1)) * 3
#     if ans[index + i2].nil?
#       ans[index + i2] = ss
#     else
#       ans[index + i2] += ss
#     end
#   end
# end
#
# puts ans.join("\n")
