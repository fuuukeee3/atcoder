defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve
  end

  def solve([x, y]) do
    if x < y do
      if x + 2 >= y do
        "Yes"
      else
        "No"
      end
    else
      if x - 3 <= y do
        "Yes"
      else
        "No"
      end
    end
    |> IO.puts
  end
end

Main.main()