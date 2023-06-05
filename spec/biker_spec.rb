require 'rspec'
require './lib/ride'
require './lib/biker'

describe 'Biker' do
  before(:each) do
    @biker = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end
  describe '#initialize' do
    it 'should initialize' do
      expect(@biker).to be_an_instance_of(Biker)
      expect(@biker.name).to eq("Kenny")
      expect(@biker.max_distance).to eq(30)
      expect(@biker.rides).to eq({})
      expect(@biker.acceptable_terrain).to eq([])
    end
  end
  describe '#learn_terrain!' do
    it 'should add to acceptable_terrain' do
      @biker.learn_terrain!(:gravel)
      @biker.learn_terrain!(:hills)
      expect(@biker.acceptable_terrain).to eq([:gravel, :hills])
    end
  end
  describe '#log_ride' do
    it 'should add rides and times to biker.rides' do
      @biker.log_ride(@ride1, 92.5)
      @biker.log_ride(@ride1, 91.1)
      expect(@biker.rides[@ride1]).to eq([92.5, 91.1])

      @biker.log_ride(@ride2, 60.9)
      @biker.log_ride(@ride2, 61.6)
      expect(@biker.rides[@ride2]).to eq([60.9, 61.6])
    end
  end
end