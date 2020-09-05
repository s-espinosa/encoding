require 'minitest/autorun'
require './lib/encoder'

class EncoderTest < Minitest::Test
  def test_it_can_encode_a_string_of_two_duplicate_characters
    input = "aa"
    expected = "2a"
    actual = Encoder.encode(input)

    assert_equal expected, actual
  end

  def test_it_can_encode_a_string_with_different_characters
    input = "aabbb"
    expected = "2a3b"
    actual = Encoder.encode(input)

    assert_equal expected, actual
  end

  def test_it_can_encode_a_string_with_single_characters
    input = "aabbbc"
    expected = "2a3bc"
    actual = Encoder.encode(input)

    assert_equal expected, actual
  end

  def test_it_can_handle_sample_input
    input = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"
    expected = "12WB12W3B24WB"

    actual = Encoder.encode(input)

    assert_equal expected, actual
  end
end
