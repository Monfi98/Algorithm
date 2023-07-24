H, M = map(int, input().split())

if(M<45 and H!=0):
    m = 60-(45-M)
    print(H-1, m)

elif(H==0 and M<45):
    m = 60-(45-M)
    print(24-1, m)
    
else:
    print(H,M-45)

