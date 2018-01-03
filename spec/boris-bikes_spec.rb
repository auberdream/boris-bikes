require 'index'

describe DockingStation do
  it 'returns true when given release_bike method' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'releases bike and checks if it is working' do
    expect(DockingStation.new.release_bike.working?).to eq true
  end
  it { is_expected.to respond_to(:dock).with(1).argument}

  it 'checks if bike is docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
