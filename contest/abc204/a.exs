defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve
  end

  def solve(list) do
    [x, y] = list
    ans = if x == y do
      x
    else
      [0, 1, 2] |> List.delete(x) |> List.delete(y) |> Enum.at(0)
    end
    IO.puts(ans)
  end
end

Main.main()
