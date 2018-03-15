VAR = 'x' 
def differentiate(expr: str) -> str:
    '''
    '''
    if (VAR not in expr and '^' not in expr):
        return str(0)
    elif VAR in expr and '^' not in expr:
        if expr[:2] == '-' + VAR:
            return str(-1)
        elif expr[0] == VAR:
            return str(1)
        else:
            c = int(expr[:(expr.find(VAR))])
            return str(c)
     elif VAR in expr and '^' in expr:
        p = int(expr[(expr.find('^'))+1:])
        if '^0' in expr:
            if expr[0] == VAR:
                return str(1)
            elif expr[:2] == '-' + VAR:
                return str(-1)
            else:
                c = int(expr[:(expr.find(VAR))])
                return str(c)
         elif '^0' not in expr:
            if expr[0] == VAR:
                return str(p) + VAR + '^' + str(p-1)
            elif expr[:2] == '-' + VAR:
                return str(p*-1) + VAR + '^' + str(p-1)
            else:
                c = int(expr[:(expr.find(VAR))])
                return str(c*p) + VAR + '^' + str(p-1)
     
                
                
             
