class Year
  def self.leap?(year)
    # every year divisible by four except for years which are both divisible by 100 and not divisible by 400
    year % 4 == 0 and not (year % 100 == 0 && year % 400 != 0)
  end
end
