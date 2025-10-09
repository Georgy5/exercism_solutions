module Port
  IDENTIFIER = :PALE
  TERMINAL_IDENTIFIER = {A: [:GAS, :OIL]}

  def self.get_identifier(city)
    city.slice(0...4).upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    identifier = ship_identifier.slice(0..2).upcase.to_sym
    TERMINAL_IDENTIFIER[:A].include?(identifier) ? :A : :B
  end
end
