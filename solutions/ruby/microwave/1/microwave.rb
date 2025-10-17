class Microwave
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    "%02d:%02d" % [ @seconds/60, @seconds%60 ]
  end
end
