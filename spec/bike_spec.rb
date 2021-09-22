require 'bike'
describe Bike do
  it 'return true if working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
end