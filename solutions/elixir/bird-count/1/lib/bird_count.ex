defmodule BirdCount do
  def today([today | _tail]), do: today
  def today([]), do: nil

  def increment_day_count([today | tail]), do: [today + 1 | tail]
  def increment_day_count([]), do: [1]

  def has_day_without_birds?([0 | _tail]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)
  def has_day_without_birds?([]), do: false

  def total([todays_count | tail]), do: todays_count + total(tail)
  def total([]), do: 0

  def busy_days([]), do: 0
  def busy_days(list) do
    Enum.count(list, fn day -> day >= 5 end)
  end
end
