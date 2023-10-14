defmodule Main do
  def main do
    _n = IO.read(:line)

    IO.read(:line)
    |> String.trim
    |> String.split
    |> Enum.map(&String.to_integer/1)
    |> Enum.uniq
    |> solve
  end

  def solve(nums) do
    if Enum.count(nums) == 1 do
      IO.puts("Yes")
    else
      IO.puts("No")
    end
  end
end

Main.main()