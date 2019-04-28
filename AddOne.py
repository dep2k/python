# Given a non-negative number represented as an array of digits,

# add 1 to the number ( increment the number represented by the digits ).

# The digits are stored such that the most significant digit is at the head of the list.

# Example:

# If the vector has [1, 2, 3]

# the returned vector should be [1, 2, 4]

# as 123 + 1 = 124.


class Solution:
    # @param A : list of integers
    # @return a list of integers
    def plusOne(self, A):
        number = 0
        power = len(A)
        
        for n in A:
            value = (10 ** (power - 1)) * n
            number += value
            power -= 1
            
       
        incrementedNumber = number + 1
        incrementVector = []
     
        while (incrementedNumber > 0):
            lastDigit = incrementedNumber % 10
            incrementVector.insert(0,lastDigit)
            incrementedNumber //= 10
            
         
        return (incrementVector) 
            

s = Solution()
v = s.plusOne([5,2,3])
print(v)