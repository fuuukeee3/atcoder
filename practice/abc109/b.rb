require 'set'
n = gets.chomp.to_i
set = Set.new
before = ""
flg = true

n.times do
  w = gets.chomp
  if set.include?(w)
    flg = false
  end

  if !(before == "") && before[-1] != w[0]
    flg = false
  end

  set << w
  before = w
end

puts flg ? "Yes" : "No"