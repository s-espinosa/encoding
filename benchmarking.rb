require 'benchmark'
require './lib/baseline.rb'
require './lib/encoder.rb'
require './lib/encoder_instance.rb'


input = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"
n = 5_000
Benchmark.bm do |x|
  x.report { n.times do   ; Encoder.encode(input); end }
  x.report { n.times do   ; EncoderInstance.new(input).encode; end }
  x.report { n.times do   ; RunLengthEncoding.encode(input); end }
end
