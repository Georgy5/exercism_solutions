module SavingsAccount
  def self.interest_rate(balance)
    balance = 0.0 if balance.nil?

    if balance >= 0 && balance < 1_000
      0.5
    elsif balance >= 1_000 && balance < 5_000
      1.621
    elsif balance >= 5_000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    interest = interest_rate(balance)
    balance + (interest / 100) * balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      years += 1
      current_balance = annual_balance_update(current_balance)
    end
    years
  end
end
