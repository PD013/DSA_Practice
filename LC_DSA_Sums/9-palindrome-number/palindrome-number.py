class Solution(object):
    def isPalindrome(self, x):
        # return str(x) == str(x)[::-1]
        if x < 0:
            return False
        # if x == 0:
        #     return True
        reversed_str = int(str(x)[::-1])
        if x == reversed_str:
            return True
        else :
            return False