class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise if empty?
    @bikes.pop
  end

  def dock(bike)
    raise if full?
    @bikes << bike
  end

  private
    def full?
      @bikes.length >= DEFAULT_CAPACITY
    end

  private
    def empty?
      @bikes.empty?
    end
end


class Bike
  def working?
    true
  end
end
