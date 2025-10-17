require 'date'

class Meetup
  OFFSET = {
    first: 1,
    second: 8,
    third: 15,
    fourth: 22,
    teenth: 13,
    last: -7
  }

  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, descriptor)
    date = Date.new(year, month, OFFSET[descriptor])
    date = date.next until date.send("#{weekday}?")
    date
  end
end
