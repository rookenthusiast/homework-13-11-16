require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new('Ace of Spades', 'Motorhead')
  end

  def test_song
    assert_equal('Ace of Spades', @song1.song)
  end

end