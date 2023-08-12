n = gets.chomp.to_i
s = gets.chomp.split("")
q = gets.chomp.to_i

sarr = []
s.each do |ss|
  sarr << { add: 0, str: ss }
end

change = {
  up: 0,
  down: 0,
}
q.times do |i|
  t, x, c = gets.chomp.split(" ")
  case t.to_i
  when 1
    # cに変更
    sarr[x.to_i - 1] = { add: i + 1, str: c }
  when 2
    # 大文字を小文字
    change[:down] = i
  when 3
    # 小文字を大文字
    change[:up] = i
  end
end

upflg = if change[:up].zero? && change[:down].zero?
          nil
        elsif change[:up] > change[:down]
          true
        else
          false
        end

if upflg.nil?
  puts sarr.map { |ss| ss[:str] }.join("")
elsif upflg
  puts sarr.map { |ss| ss[:add] > change[:up] ? ss[:str] : ss[:str].upcase }.join("")
else
  puts sarr.map { |ss| ss[:add] > change[:down] ? ss[:str] : ss[:str].downcase }.join("")
end
