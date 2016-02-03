FullRoad=len(inputStr)
SantaRoute=""
RoboRoute=""

for i in range(1,FullRoad+1):
    if i % 2==1:
        SantaRoute=SantaRoute+inputStr[i-1]
    else:
        RoboRoute=RoboRoute+inputStr[i-1]

print(SantaRoute)
print("------------------")
print(RoboRoute)
