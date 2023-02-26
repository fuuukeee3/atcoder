n = gets.chomp.to_i
s = gets.chomp.split("")

current = [0, 0]
visited = {
  '00' => true
}
flg = false
s.each do |ss|
  case ss
  when 'R'
    current = [current[0] + 1, current[1]]
  when 'L'
    current = [current[0] - 1, current[1]]
  when 'U'
    current = [current[0], current[1] + 1]
  when 'D'
    current = [current[0], current[1] - 1]
  end

  if visited[current.join("")]
    flg = true
    break
  end
  visited[current.join("")] = true
end

p
puts flg ? "Yes" : "No"
