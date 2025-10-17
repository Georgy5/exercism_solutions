defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - (discount/100 * before_discount)
  end

  def monthly_rate(hourly_rate, discount) do
    before_discount = 22 * daily_rate(hourly_rate)
    discounted = Float.ceil(apply_discount(before_discount, discount))
    trunc(discounted)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    if (daily_rate(hourly_rate)) == budget do
      Float.floor(budget / apply_discount(budget, discount), 1)
    else
      discounted_rate = apply_discount(daily_rate(hourly_rate), discount)
      Float.floor(budget / discounted_rate, 1)
    end
  end
end
