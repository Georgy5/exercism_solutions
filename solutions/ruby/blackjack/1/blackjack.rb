module Blackjack
  CARD_VALUES = {
    "ace"   => 11,
    "two"   => 2,
    "three" => 3,
    "four"  => 4,
    "five"  => 5,
    "six"   => 6,
    "seven" => 7,
    "eight" => 8,
    "nine"  => 9,
    "ten"   => 10,
    "jack"  => 10,
    "queen" => 10,
    "king"  => 10
  }.freeze

  def self.parse_card(card)
    return 0 unless  CARD_VALUES.include?(card)

    CARD_VALUES[card]
  end

  def self.card_range(card1, card2)
    card_range = parse_card(card1) + parse_card(card2)

    case card_range
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    card_sum = parse_card(card1) + parse_card(card2)

    case card_sum
    when 22
      "P"
    when 21
      (parse_card(dealer_card) >= 10) ? "S" : "W"
    when 17..20
      "S"
    when 12..16
      (parse_card(dealer_card) >= 7) ? "H" : "S"
    when 0..11
      "H"
    end
  end
end
