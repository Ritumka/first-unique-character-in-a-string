pp string = ["aabb", "qquwerty", "loveletter"].sample

def first_uniq_char(s)
    
    occurences = Hash.new(0)
    
    s.each_char do |char| 
       occurences[char] += 1 
    end
    
	pp occurences
	
    s.each_char.with_index do |char, index|
		if occurences[char] == 1 
            return index
        end 
		
    end
    
    return -1
	
    
end

puts first_uniq_char(string)
