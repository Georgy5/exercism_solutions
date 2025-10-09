class PhoneNumber
  def self.clean(number)
    cleaned_number = number.gsub(/\D/, '')
    return nil unless valid_length?(cleaned_number) && valid_first_digits?(cleaned_number)

    remove_country_code!(cleaned_number)
    cleaned_number
  end

  def self.valid_length?(number)
    (10..11).cover?(number.length)
  end

  def self.valid_first_digits?(number)
    return false if number.length == 11 && number[0] != '1'
    return false if number[0] == '0' || number[-10].to_i < 2 || number[-7].to_i < 2

    true
  end

  def self.remove_country_code!(number)
    number.slice!(0) if number[0] == '1'
    number
  end
end
