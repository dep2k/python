class Solution:
    # @param A : list of integers
    # @param B : list of integers
    # @return an integer
    def coverPoints(self, A, B):
        
        count = len(A)
        totalSteps = 0
        for index in range(count-1):
            deltaX = abs(A[index] - A[index+1])
            deltaY = abs(B[index] - B[index+1])
            steps = abs(deltaX - deltaY) + min(deltaX,deltaY)
            totalSteps += steps
        return totalSteps
        