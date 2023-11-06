defmodule Main do
  def main do
    _n = get_n()
    get_s()
    |> solve()
    |> IO.puts()
  end

  defp solve(s) do
    if String.contains?(s, ["ab", "ba"])  do
      "Yes"
    else
      "No"
    end
  end

  defp get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()
  defp get_s, do: IO.read(:line) |> String.trim()
end

Main.main()
