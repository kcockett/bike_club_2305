require 'rspec'
require './lib/biker'
require './lib/ride'

describe 'BikeClub' do
  it 'should initialize' do
    club = BikeClub.new("Denver Pedalers")
    expect(club.name).to eq("Denver Pedalers")
    expect(club.members).to eq({})
  end
end