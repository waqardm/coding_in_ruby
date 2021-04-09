# frozen_string_literal: false

def song_decoder(song)
  song.gsub(/WUB{1-3}/, 'WUB' => ' ')

  # 'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*') 
end

song = 'AWUBWUBWUBBWUBWUBWUBC'
p song_decoder(song)