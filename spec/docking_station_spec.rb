require 'docking_station'
require 'bike'

describe DockingStation do
  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

  end

  describe "#dock" do
    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq (bike)
    end
  end  

  describe "#getter" do
    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq (bike)
    end
  end

  describe "#is_full" do
    it "raises an error when the docking station is full" do
      bike = Bike.new
      subject.dock(bike)
      expect { subject.is_full }.to raise_error "Docking station full"
    end
  end
end