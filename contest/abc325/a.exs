defmodule Main do
  def main do
    [s, _t] =
      IO.read(:line)
      |> String.trim
      |> String.split(" ")
    IO.puts(s <> " san")
  end
end

Main.main()
