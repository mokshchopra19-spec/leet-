class Solution:
    def isValid(self, s: str) -> bool:
        ls=[]
        for x in s:
            if x=="(" or x=="{" or x=="[":
                ls.append(x)
            elif ls and ( x==")"and ls[-1]=="("  or x=="}" and ls[-1]=="{" or x=="]"and ls[-1]=="["): 
                ls.pop()
            else:
                return False  
        if len(ls)==0 :
            return True  
        return False
