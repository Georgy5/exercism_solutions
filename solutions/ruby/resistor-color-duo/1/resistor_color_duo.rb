class ResistorColorDuo
  RESISTOR_VALUES = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  def self.value(ary)
    band1, band2 = ary
    "#{RESISTOR_VALUES[band1.to_sym]}#{RESISTOR_VALUES[band2.to_sym]}".to_i
  end
end
