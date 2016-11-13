class Room

  attr_reader :room, :song_list, :customers_in_room

def initialize(room_name)
@room = room_name
@song_list = []
@customers_in_room = []
end

def add_to_songlist(song)
  @song_list << song
end

def add_guest(guest)
  counter = 12
  if @customers_in_room.count < counter
  @customers_in_room << guest
else 
  return "room is full"
end

end

def remove_guest(guest)
 @customers_in_room.delete_if { |person| person == guest }
end



end
