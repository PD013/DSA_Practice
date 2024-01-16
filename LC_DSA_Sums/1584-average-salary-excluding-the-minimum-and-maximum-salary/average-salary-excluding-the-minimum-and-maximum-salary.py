# class Solution:
#     def average(self,salary):
#         salary.sort()
#         del salary[-1]
#         del salary[0]
#         return sum(salary) / len(salary) Here all cases were not accepted
class Solution:
        def average(self, salary):
         salary.sort()
         salary[0], salary[-1] = 0, 0
         return float((sum(salary)*1.0) / (len(salary) - 2))
       