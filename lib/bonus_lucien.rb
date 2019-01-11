require "colorize"
character_pos = ["*".colorize(:green), "_", "_", "_", "_", "_", "_", "_", "_", "_"]
def stairs(character_pos)
puts "
                  #{character_pos[9]}_
                #{character_pos[8]}|
              #{character_pos[7]}|
            #{character_pos[6]}|
          #{character_pos[5]}|
        #{character_pos[4]}|
      #{character_pos[3]}|
    #{character_pos[2]}|
  #{character_pos[1]}|
#{character_pos[0]}|"
end
i = 1
puts stairs(character_pos)
while i < 10
  sleep(0.1)
  system "clear"
  dice_roll = rand(6) + 1
  if dice_roll >= 5
    character_pos[i-1] = "_"
    character_pos[i] = "*".colorize(:green)
    puts stairs(character_pos)
    i += 1
  elsif dice_roll == 1 && i > 0
    character_pos[i-1] = "*".colorize(:green)
    character_pos[i] = "_"
    puts stairs(character_pos)
    i -= 1
  else
    puts stairs(character_pos)
  end
end
