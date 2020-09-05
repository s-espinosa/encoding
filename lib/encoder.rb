class Encoder
  def self.encode(input)
    encoded = ""
    current_character = input[0]
    current_count = 0

    encoded, current_character, current_count = add_characters(input, encoded, current_character, current_count)
    add_final_characters(encoded, current_count, current_character)
  end

  def self.add_characters(input, encoded, current_character, current_count)
    input.each_char do |letter|
      if letter == current_character
        current_count += 1
      elsif current_count == 1
        encoded = encoded + current_character
        current_character = letter
      else
        encoded = encoded + current_count.to_s + current_character
        current_character = letter
        current_count = 1
      end
    end
    [encoded, current_character, current_count]
  end

  def self.add_final_characters(encoded, current_count, current_character)
    if current_count == 1
      encoded = encoded + current_character
    else
      encoded = encoded + current_count.to_s + current_character
    end
    encoded
  end
end


