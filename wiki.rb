def wiki(hash,start,finish)
    paths = [start]
    
    while found = false
        new_paths = []
        path.each do |path|
            key = path[-1]
            hash[key].each do |route|
                new_path = path 
                new_path << route
                new_paths << new_path
                if new_path[-1] == finish
                    return new_path
                end
            end
        end
        paths = new_paths
    end
end

hash={}
start = 0
finish = 0
lines = ARGF.read.split("\n")
lines.each do |line|
    if line.include?("start:")
        start = line.split("start:")[1]
    elsif line.include?("finish:")
        finish = line.split("finish:")[1]

    else
    link = line.split(" ")
    if !!!hash[link[0]]
        hash[link[0]] = []
    end
    hash[link[0]] << link[1]
end
end

wiki(hash,start,finish)