require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../venue')

class TestVenue < Minitest::Test

  def setup()
    @venue = Venue.new('Music House')
    @room1 = Room.new('Addicted to Rock')
    @room2 = Room.new('Back to the 80s')
    @guest1 = Guest.new('Chloe', 100) 
    @guest2 = Guest.new('Cameron', 150) 
  end

  def test_choose_room_in_venue
@venue.add_rooms_to_venue(@room1)
@venue.add_rooms_to_venue(@room2)
@venue.guest_chooses_room(@guest1, @room2)
assert_equal(2, @venue.karoke_rooms.count)
    assert_equal("Chloe", @room1.customers_in_room[0].name)
  end



end