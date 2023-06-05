require 'rspec'
require './lib/bike_club'

describe 'BikeClub' do
  it 'should initialize' do
    club = BikeClub.new("Denver Pedalers")
    expect(club.name).to eq("Denver Pedalers")
    expect(club.members).to eq([])
  end
end