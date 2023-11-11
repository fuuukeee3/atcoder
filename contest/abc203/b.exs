defmodule Main do
  def main do
    [n, k] =
      IO.read(:line)
      |> String.trim
      |> String.split(" ")
      |> Enum.map(&String.to_integer/1)

    list = for i <- 1..n, j <- 1..k, do: "#{i}0#{j}"
    list
      |> Enum.map(&String.to_integer/1)
      |> Enum.sum
      |> IO.puts
  end
end

Main.main()
