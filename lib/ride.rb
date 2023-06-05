class Ride
  attr_reader :name, :distance, :terrain, :total_distance


  def initialize(trail_info_hash)
    @name = trail_info_hash[:name]
    @distance = trail_info_hash[:distance]
    @loop = trail_info_hash[:loop]
    @terrain = trail_info_hash[:terrain]
    @total_distance = trail_info_hash[:distance]
    @total_distance *= 2 if !trail_info_hash[:loop]  
  end

  def loop?
    @loop
  end
end