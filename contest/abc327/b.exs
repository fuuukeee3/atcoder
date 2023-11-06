defmodule Main do
  def main do
    get_n()
    |> solve()
    |> IO.inspect()
  end

  defp solve(n) do
    results = for i <- 1..16, i ** i == n, do: i
    if length(results) == 0 do
      -1
    else
      Enum.at(results, 0)
    end
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()
  defp get_s, do: IO.read(:line) |> String.trim()
end

Main.main()
