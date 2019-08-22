lines = ARGF.read.split("\n")
lines.each do |line|
    #puts line
    format(line.to_i)
end

