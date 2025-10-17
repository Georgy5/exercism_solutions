module Port
  IDENTIFIER = :PALE
  TERMINAL_IDENTIFIER = {A: ['oil', 'gas']}

  def self.get_identifier(city)
    city.slice(0...4).upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo_identifier = ship_identifier.slice(0..2).downcase
    TERMINAL_IDENTIFIER[:A].include?(cargo_identifier) ? :A : :B
  end
end
