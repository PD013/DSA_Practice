class Solution:
  def containsDuplicate(self, nums):
   return len(nums) != len(set(nums))

nums = [1,2,3,1]
result = Solution().containsDuplicate(nums)
print(result)

        