class PhoneNumber
  def self.clean(number)
    cleaned_number = remove_non_digits_and_country_code(number)
    return nil unless valid_length?(cleaned_number) && valid_first_digits?(cleaned_number)

    cleaned_number
  end

  def self.remove_non_digits_and_country_code(number)
    number.gsub(/\D/, '').sub(/^1/, '')
  end

  def self.valid_length?(number)
    number.length == 10
  end

  def self.valid_first_digits?(number)
    ('2'..'9').cover?(number[0]) && ('2'..'9').cover?(number[3])
  end
end
