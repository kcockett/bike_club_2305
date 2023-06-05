require 'rspec'
require './lib/bike_club'

describe 'BikeClub' do
  before(:each) do
    @club = BikeClub.new("Denver Pedalers")
    @biker = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    @biker.learn_terrain!(:gravel)
    @biker.learn_terrain!(:hills)
    @biker.log_ride(@ride1, 92.5)
    @biker.log_ride(@ride1, 91.1)
    @biker.log_ride(@ride2, 60.9)
    @biker.log_ride(@ride2, 61.6)
    @biker2.learn_terrain!(:gravel)
    @biker2.learn_terrain!(:hills)
    @biker2.log_ride(@ride2, 65.0)
  end
  describe '#initialize' do
    it 'should initialize' do
      expect(@club.name).to eq("Denver Pedalers")
      expect(@club.members).to eq([])
    end
  end
  describe '#add_member' do
    it 'should add members' do
      expect(@club.members).to eq([])
      @club.add_member(@biker)
      expect(@club.members).to eq([@biker])
    end
  end
end