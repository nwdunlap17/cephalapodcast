


def insideout(line)
    if line.length == 1
        return line+line
    end
    if line.length.even?
        half = line.length/2
        first = line.slice(0..(half-1))
        second = line.slice(half..-1)
        return "#{first.reverse}#{second.reverse}"
    else
        half = line.length/2
        middle = line[half]
        first = line.slice(0..(half-1))
        second = line.slice((half+1)..-1)
        return "#{middle}#{first.reverse}#{second.reverse}#{middle}"

        

    end
end

lines = ARGF.read.split("\n")
lines.each do |line|
    puts insideout(line)
end