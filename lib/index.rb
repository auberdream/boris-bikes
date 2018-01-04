class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
      @bikes.length >= @capacity
    end

    def empty?
      @bikes.empty?
    end
end


class Bike
  def working?
    true
  end
end
