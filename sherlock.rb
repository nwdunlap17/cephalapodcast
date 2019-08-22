lines = ARGF.read.split("\n")
lines.each do |line|
    puts sherlock(line)
end

def sherlock(line)
    lines = line.split('')
    hash = {}
    line.length.times do |i|
        hash[line[i]] = line.count(line[i])
    end
    check = false
    i = 0
    while i < hash.count
        key = hash[hash.keys[i]]
        j = i
        while j < hash.count
            jey = hash[hash.keys[j]]
            if (jey - key).abs > 0
                if (jey - key).abs == 1
                    if check
                        return false
                    else
                        check = true
                        if jey > key
                            hash[hash.keys[j]] -=1
                        else
                            hash[hash.keys[i]] -=1

                        end
                    end
                else
                    return false
                end
            end
            j += 1
        end
        i = i + 1
    end

    return true
end
