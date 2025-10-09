class PhoneNumber
  def self.clean(number)
    cleansed_number = cleanse_phone_number(number)
    return cleansed_number if valid_length?(cleansed_number) && valid_first_digits?(cleansed_number)
  end

  def self.cleanse_phone_number(number)
    number.gsub(/\D/, '').sub(/^1/, '')
  end

  def self.valid_length?(number)
    number.length == 10
  end

  def self.valid_first_digits?(number)
    ('2'..'9').cover?(number[0]) && ('2'..'9').cover?(number[3])
  end
end
