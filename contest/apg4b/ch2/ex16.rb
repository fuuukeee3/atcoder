arr = gets.chomp.split(" ").map(&:to_i)

flg = false
before = ""
arr.each do |a|
  if before == a
    flg = true
  end
  before = a
end

puts flg ? "YES" : "NO"
