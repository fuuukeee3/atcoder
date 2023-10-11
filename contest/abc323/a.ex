defmodule Main do
  def main do
    s =
      IO.read(:line)
      |> String.trim
      |> String.split("", trim: true)

    len = Enum.count(s)
    results = for i <- 0..len-1 do
      if rem(i+1, 2) == 0 && Enum.at(s, i) == "1" do
        true
      else
        false
      end
    end

    if Enum.find_value(results, fn r -> if r == true do r end end) do
      IO.puts("No")
    else
      IO.puts("Yes")
    end
  end
end