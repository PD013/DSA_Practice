# class Solution:
#   def containsDuplicate(self, nums):
#    return len(nums) != len(set(nums))
# # Here we are comparing size of nums with the len of nums in set where there is no duplicates 
# # So if any duplicates the size would not match and it means True they are not equal
# nums = [1,2,3,1]
# result = Solution()
# result.containsDuplicate(nums)
# print(result)


class Solution(object):
    def containsDuplicate(self, nums):
        num_set = set()
        for i in nums: 
            if i in num_set:
                return True
            else:
                num_set.add(i)
        return False
  # here we are adding one by one element in the set and if try adding duplicate then it would return True else False 

        
