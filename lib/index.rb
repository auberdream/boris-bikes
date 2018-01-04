class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise if @bikes.length == 20
    @bikes << bike
  end

end


class Bike
  def working?
    true
  end
end
