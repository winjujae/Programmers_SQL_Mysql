def solution(n, s):
    if s < n:
        return [-1]
    
    quotient = s // n
    remainder = s % n
    
    # Create an array with the quotient value
    result = [quotient] * n
    
    # Distribute the remainder among the elements
    for i in range(remainder):
        result[i] += 1
    
    # Sorting the result to match the expected output format (optional)
    result.sort()
    
    return result