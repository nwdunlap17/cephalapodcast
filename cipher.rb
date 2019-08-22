def cipher(line)
    numb = "0123456789"#.split('').delete('')
    arr = []
    line.length.times do |i|
        if numb.include?(line[i])
            arr << line[i]
        end
    end

    letter = []

    first = false
    arr.each do |num|
        if !first && num.to_i < 3
            first = num.to_i
        elsif first && (first*10 + num.to_i) < 26
            letter <<  ((first*10) + (num.to_i))
            first = false
        end
    end
    alpha = 'abcdefghijklmnopqrstuvwxyz'
    letter.each do |letter|
        print alpha[letter]
    end
    puts ''
end

lines = ARGF.read.split("\n")
lines.each do |line|
    puts cipher(line)
end