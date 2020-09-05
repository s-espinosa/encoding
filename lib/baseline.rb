class RunLengthEncoding
  def self.encode(input)
    ds = input.split("").reduce([]) { |arr, char|
      if arr.empty?
        arr.push([char, 1])
        next arr
      end
      last = arr.pop
      if char == last[0]
        arr.push([char, last[1]+1])
        next arr
      end
      arr.push(last)
      arr.push([char, 1])
      arr
    }
    ds.reduce('') { |str, i|
      char, amt = i
      str << (amt == 1 ? "#{char}" : "#{amt.to_s}#{char}")
    }
  end

  def self.decode(input)
    t = input
    out = ""
    while idx = t.index(/[^0-9]/) do
      d, t = [t[0..idx], t[idx+1..-1]]
      char = d[-1]
      factor = d.chop.to_i
      out << char * (factor == 0 ? 1 : factor)
    end
    out
  end
end
