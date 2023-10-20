defmodule Main do
  def main do
    IO.read(:line)
    |> String.trim
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> solve
  end

  def solve(list) do
    cond do
      Enum.at(list, 0) == Enum.at(list, 1) ->
        IO.puts(Enum.at(list, 2))

      Enum.at(list, 0) == Enum.at(list, 2) ->
        IO.puts(Enum.at(list, 1))

      Enum.at(list, 1) == Enum.at(list, 2) ->
        IO.puts(Enum.at(list, 0))

      true ->
        IO.puts(0)
    end
  end
end

Main.main()