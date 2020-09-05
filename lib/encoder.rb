class Encoder
  def self.encode(input)
    encoded = ""
    current_character = input[0]
    current_count = 0

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

    if current_count == 1
      encoded = encoded + current_character
    else
      encoded = encoded + current_count.to_s + current_character
    end

    encoded
  end
end


