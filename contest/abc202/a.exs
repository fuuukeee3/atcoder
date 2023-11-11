defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve
  end

  def solve(list) do
    list
      |> Enum.map(fn e -> 7 - e end)
      |> Enum.sum
      |> IO.puts
  end
end

Main.main()