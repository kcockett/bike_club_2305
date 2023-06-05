require './lib/biker'
require './lib/ride'

class BikeClub
  attr_reader :name, :members

  def initialize(name)
    @name = name
    @members = []
  end

  def add_member(rider)
    @members << rider if rider != nil
  end

  def most_rides
    (@members.max_by { |member| member.rides.size }).name
  end
end