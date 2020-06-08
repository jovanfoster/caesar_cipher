def caesar(str, shft)
    alpha = ('a'..'z').to_a
    caps_alpha = ('A'..'Z').to_a
    new_string = str.split.map{ |string|
        string = string.split(//).map{ |char| 
            if char.match?(/[a-z]/)
                char = alpha[(alpha.index(char) + shft) % alpha.length]
            elsif char.match?(/[A-Z]/)
                char = caps_alpha[(caps_alpha.index(char) + shft) % caps_alpha.length]
            elsif char.match?(/\d/)
                char = char.to_i + shft
            else char = char
            end
        }.join   
    }.join(' ')
    
    return new_string
end

puts "Please enter a phrase: "
str = gets.chomp

puts "Please enter a shift: "
shft = gets.chomp.to_i

puts caesar(str, shft)