n, d = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split("")
end

results = []
count = 0
d.times do |dd|
  tmp = []
  n.times do |nn|
    if arr[nn][dd] == "o"
      tmp << true
    else
      tmp << false
    end
  end

  if tmp.all?
    count += 1
  else
    results << count
    count = 0
  end
end

if results.size.zero?
  results << d
end
puts results.max