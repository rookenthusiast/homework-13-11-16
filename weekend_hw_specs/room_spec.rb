require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')


class TestRoom < Minitest::Test

  def setup()
    @song1 = Song.new('Ace of Spades', 'Motorhead')
    @song2= Song.new('All summer long', 'Kid Rock')
    @room1 = Room.new('Addicted to Rock')
    @guest1 = Guest.new('Chloe', 100) 
    @guest2 = Guest.new('Cameron', 150) 
  end

def test_adding_song_to_songlist
  @room1.add_to_songlist(@song1)
  assert_equal('Ace of Spades', @room1.song_list[0].title)
end

def test_add_guest_to_room
  @room1.add_guest(@guest1)
  assert_equal("Chloe", @room1.customers_in_room[0].name)
end

def test_check_room_full
  12.times{@room1.add_guest(@guest1)} 
  assert_equal("room is full", @room1.add_guest(@guest2))
end

def test_remove_guest_from_room
  @room1.add_guest(@guest1)
  @room1.add_guest(@guest2)
  @room1.remove_guest(@guest1)
  assert_equal(1, @room1.customers_in_room.count)
  assert_equal("Cameron", @room1.customers_in_room[0].name)
end


# def test_choose_song
# @room1.add_to_songlist(@song1)
# @room1.add_to_songlist(@song2)
# assert_equal('Ace of Spades', @room1.select_song)
# end



end
