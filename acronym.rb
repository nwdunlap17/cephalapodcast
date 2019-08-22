

def acronym(lines)
    capital = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    arr = []
    lines.each do |line|
        line.length.times do |i|
            if capital.include?(line[i])
                arr << line[i]
            end
        end
    end
    return arr.join("")
end

lines = ARGF.read.split("\n")
lines.each do |line|
    #puts line
    #format(line.to_i)
    puts    acronym(line.split(''))
end
# print acronym(lines)