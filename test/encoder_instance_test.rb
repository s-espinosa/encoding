require 'minitest/autorun'
require './lib/encoder_instance'

class EncoderTest < Minitest::Test
  def test_it_can_encode_a_string_of_two_duplicate_characters
    input = "aa"
    expected = "2a"
    actual = EncoderInstance.new(input).encode

    assert_equal expected, actual
  end

  def test_it_can_encode_a_string_with_different_characters
    input = "aabbb"
    expected = "2a3b"
    actual = EncoderInstance.new(input).encode

    assert_equal expected, actual
  end

  def test_it_can_encode_a_string_with_single_characters
    input = "aabbbc"
    expected = "2a3bc"
    actual = EncoderInstance.new(input).encode

    assert_equal expected, actual
  end

  def test_it_can_handle_sample_input
    input = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"
    expected = "12WB12W3B24WB"
    actual = EncoderInstance.new(input).encode

    assert_equal expected, actual
  end
end
