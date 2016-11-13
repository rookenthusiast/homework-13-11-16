class Venue

  attr_reader :name, :karoke_rooms, :entry_fee

  def initialize(name)
    @name = name
    @karoke_rooms = []
    @entry_fee = 20
  end

  def add_rooms_to_venue(room)
    @karoke_rooms << room
  end



end