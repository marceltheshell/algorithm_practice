def search_matrix(matrix, target)
    left = 0
    right = matrix.length - 1
    
    while left <= right 
        mid = (left + right)/2
        
  
        if matrix[mid].include?(target)
            return true
        end
        
        unless matrix[mid][0].nil? || matrix[mid][-1].nil?
            if target < matrix[mid][0] 
                right = mid - 1
            elsif target > matrix[mid][-1]
                left = mid + 1
            end
        end
    end
    
    return false
end