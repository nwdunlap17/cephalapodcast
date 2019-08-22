def candyland(players,board,cards)
    p = []
    players.times do
        p << 0
    end

    turn = 0
    cards.each do |card|
        next_space = p[turn]

        found = false
        board.count.times do |i|
            space = board[i]
            if i > p[turn] && space == card
                p[turn] = i
                puts "Player #{turn+1} moves to #{space}"
        
                if p[turn] == board.count - 1
                    puts "Player #{turn+1} wins!"
                end
                break
            end
            i += 1
        end

        turn = turn+1
        if turn == players
            turn = 0
        end
    end

end

num = 0
board = 0
cards = 0
lines = ARGF.read.split("\n")
lines.each do |line|
    if num == 0
        num = line.to_i
    end
    if line.include?("board:")
        line = line.split("board:")
        board = line[1].split(" ")
    end
    if line.include?("cards:")
        line = line.split("cards:")
        cards = line[1].split(" ")
    end
end

candyland(num,board,cards)