defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - (discount/100 * before_discount)
  end

  def monthly_rate(hourly_rate, discount) do
    before_discount = 22 * daily_rate(hourly_rate)
    apply_discount(before_discount, discount)
    |> Float.ceil()
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = daily_rate(hourly_rate)
    discounted_rate = apply_discount(daily_rate, discount)
    Float.floor(budget / discounted_rate, 1)
  end
end
