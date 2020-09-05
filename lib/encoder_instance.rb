class EncoderInstance
  def initialize(input)
    @input = input
    @encoded = ""
    @current_character = input[0]
    @current_count = 0
  end

  def encode
    @input.each_char do |letter|
      if letter == @current_character
        increment_current_count
      else
        add_to_encoded_string
        reset_count(letter)
      end
    end

    add_to_encoded_string
    @encoded
  end

  private
  def increment_current_count
    @current_count += 1
  end

  def add_to_encoded_string
    @encoded = add_encoded_characters
  end

  def add_encoded_characters
    @encoded + count_as_string(@current_count) + @current_character
  end

  def reset_count(letter)
    @current_character = letter
    @current_count = 1
  end

  def count_as_string(count)
    count == 1 ? "" : count.to_s
  end
end


