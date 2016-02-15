class Timer
  attr_reader :seconds, :minutes, :hours

  def initialize
    @seconds  = 0
    @minutes  = 0
    @hours    = 0
  end

  def seconds=(seconds)
    @seconds = seconds % 60
    @minutes = ( seconds / 60 ).to_i
    @hours = ( minutes / 60 ).to_i
    @minutes = @minutes % 60
  end

  def time_string
    "#{@hours.to_s.rjust(2, '0')}:#{@minutes.to_s.rjust(2, '0')}:#{@seconds.to_s.rjust(2, '0')}"
  end
end
