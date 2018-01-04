require 'index'

describe DockingStation do
  it 'returns true when given release_bike method' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'releases bike and checks if it is working' do
    subject.dock(Bike.new)
    expect(subject.release_bike.working?).to eq true
  end
  it { is_expected.to respond_to(:dock).with(1).argument}

  it 'checks if bike is docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  it 'fails if a bike is released when there is no bike' do
    expect {DockingStation.new.release_bike}.to raise_error
  end

  it 'fails if a bike is docked when the station is full at default capacity' do
    expect{(DEFAULT_CAPACITY+1).times {subject.dock(Bike.new)}}.to raise_error
  end

  it 'fails if a bike is docked when the station is full at custom capacity' do
    docking_station = DockingStation.new(40)
    expect{41.times {docking_station.dock(Bike.new)}}.to raise_error
  end

  it 'has an instance variable for the capacity' do
    expect(DockingStation.new.capacity)
  end

  it 'accepts a capacity other than the default' do
    expect(DockingStation.new(40).capacity).to eq 40
  end
end
