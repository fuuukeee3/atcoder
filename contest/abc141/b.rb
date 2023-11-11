s = gets.chomp
flg = true
s.split("").each_with_index do |ss, index|
  if (index + 1).odd?
    flg = false if ss == "L"
  else
    flg = false if ss == "R"
  end
end

puts flg ? "Yes" : "No"
