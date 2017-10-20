defmodule Towers do
  def hanoi(n) when 0<n and n<10, do: hanoi(n, "A", "B", "C")

  defp hanoi(1, from, _, to), do: move(from, to)
  defp hanoi(n, from, via, to) do
    hanoi(n-1, from, to, via)
    move(from, to)
    hanoi(n-1, via, from, to)
  end

  defp move(from, to), do: IO.puts "moving disk from #{from} to #{to}"
end

Towers.hanoi(3)
