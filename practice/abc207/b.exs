defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve
    |> IO.puts()
  end

  def solve([_a, b, c, d]) when b >= c * d, do: -1
  def solve([a, b, c, d]) do
    Enum.reduce_while(1..100000, %{blue: a, red: 0}, fn x, acc ->
      new_acc = %{blue: acc.blue + b, red: acc.red + c}
      if new_acc.blue <= new_acc.red * d do
        {:halt, x}
      else
        {:cont, new_acc}
      end
    end)
  end
end

Main.main()
