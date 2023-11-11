defmodule Main do
  def main do
    n = IO.read(:line)
    |> String.trim
    |> String.to_integer

    IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve(n)
  end

  def solve(list, n) do
    if Enum.to_list(1..n) == Enum.sort(list) do
      IO.puts("Yes")
    else
      IO.puts("No")
    end
  end
end

Main.main()
