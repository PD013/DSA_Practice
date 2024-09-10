class Solution(object):
    def reverse(self, n):
        INT_MIN, INT_MAX = -2**31, 2**31 - 1
        
        reversed_num = int(str(n)[::-1]) if n >= 0 else -int(str(-n)[::-1])

        if reversed_num > INT_MAX or reversed_num < INT_MIN:
            return 0

        return reversed_num
        

        
        