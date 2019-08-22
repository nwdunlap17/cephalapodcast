require 'pry'
def clue(sus,weap,room,clues)
    clues.each do |clue|
        if clue.include?("not the")
            if weap.any?(clue.split("not the ")[1])
                weap.delete(clue.split("not the ")[1])
            elsif room.any?(clue.split("not the ")[1])
                room.delete(clue.split("not the ")[1])
            end
        else
            if sus.include?(clue.split("not ")[1])
                sus.delete(clue.split("not ")[1])
            end
        end
    end
    return "#{sus[0]} in the #{room[0]} with the #{weap[0]}"
end

lines = ARGF.read.split("\n")
sus = []
weap = []
room = []
clues = []
lines.each do |line|
    if line.include?("Suspects")
        line = line.split('Suspects:')
        sus = line[1].split(',')
    elsif line.include?("Weapons")
        line = line.split('Weapons:')
        weap = line[1].split(',')
    elsif line.include?("Rooms")
        line = line.split('Rooms:')
        room = line[1].split(',')
    elsif line != 'clues:'
        clues << line
    end
end

#  puts sus
#  puts weap
#  puts room
#  puts clues
 p clue(sus,weap,room,clues)