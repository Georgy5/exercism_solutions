class PhoneNumber
  def self.clean(number)
    # return nil unless number.match(/\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/)
    return nil if number.length == 11 && number[0] != '1'

    cleaned_number = number.gsub(/\D/, '')
    return nil if cleaned_number[-10].to_i < 2
    return nil if cleaned_number[0] == '0'
    return nil if cleaned_number.length > 11
    return nil if cleaned_number.length < 10
    return nil if cleaned_number[-7].to_i < 2

    remove_country_code!(cleaned_number)
    cleaned_number
  end

  def self.remove_country_code!(number)
    number.slice!(0) if number[0] == '1'
    number
  end
end
