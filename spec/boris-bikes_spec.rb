require 'index'

describe DockingStation do
  it 'returns true when given release_bike method' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'releases bike and checks if it is working' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
  it { is_expected.to respond_to(:dock).with(1).argument}

  it 'checks if bike is docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'fails if a bike is released when there is no bike' do
    expect {DockingStation.new.release_bike}.to raise_error
  end

  it 'fails if a bike is docked when the station is full' do
    subject.dock(Bike.new)
    bike = Bike.new
    expect{subject.dock(bike)}.to raise_error
  end
end
