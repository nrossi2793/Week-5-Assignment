# Welcome to Sonic Pi v3.0.1
beat_len = 1.0

in_thread do
  
  live_loop :melody do
    with_fx :reverb, mix: 0.6 do
      sample :ambi_drone
      sleep beat_len
    end
  end
  
  
  
  live_loop :jive do
    sample :bd_haus, rate: 1
    with_fx :echo, mix: 0.3 do
      sample :ambi_piano, rate: -1
    end
    sleep 1
  end
  
  live_loop :melody do
    play_pattern([60, 65, 70, 68])
    play_pattern([60, 65, 75, 66])
    play_pattern([60, 65, 70, 68])
    play_pattern([60, 65, 70, 68])
  end
end

