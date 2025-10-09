module Chess
  RANKS = (1..8)
  FILES = ('A'..'H')

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    (first_name[0...2] + last_name[-2..-1]).upcase
  end

  def self.move_message(first_name, last_name, square)
    rank = square.scan(/\d+/).first.to_i
    file = square.scan(/[a-zA-Z]+/).first
    player = Chess.nick_name(first_name, last_name)

    if Chess.valid_square?(rank, file)
      "#{player} moved to #{square}"
    else
      "#{player} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
