defmodule BirdCount do
  def today([today | _tail]), do: today
  def today([]), do: nil

  def increment_day_count([today | tail]), do: [today + 1 | tail]
  def increment_day_count([]), do: [1]

  def has_day_without_birds?([0 | _tail]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)
  def has_day_without_birds?([]), do: false

  def total([daily_count | tail]), do: daily_count + total(tail)
  def total([]), do: 0

  def busy_days([]), do: 0
  def busy_days(list) do
    busy_days(list, 0)
  end

  defp busy_days([], count), do: count
  defp busy_days([daily_count | tail], count) when daily_count >= 5 do
    busy_days(tail, count + 1)
  end
  defp busy_days([_ | tail], count), do: busy_days(tail, count)
end
