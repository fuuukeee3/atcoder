defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split
    |> Enum.map(&String.to_integer/1)
    |> Enum.sort
    |> solve
  end

  def solve(list) do
    l0 = Enum.at(list, 0)
    l1 = Enum.at(list, 1)
    l2 = Enum.at(list, 2)
    if l1 - l0 == l2 - l1 do
      IO.puts("Yes")
    else
      IO.puts("No")
    end
  end
end

Main.main()