class Encoder
  def self.encode(input)
    encoded = ""
    current_character = input[0]
    current_count = 0

    input.each_char do |letter|
      if letter == current_character
        current_count += 1
      else
        encoded = add_encoded_characters(encoded, current_count, current_character)
        current_character = letter
        current_count = 1
      end
    end

    add_encoded_characters(encoded, current_count, current_character)
  end

  def self.add_encoded_characters(encoded, current_count, current_character)
    encoded + count_as_string(current_count) + current_character
  end

  def self.count_as_string(count)
    count == 1 ? "" : count.to_s
  end
end


