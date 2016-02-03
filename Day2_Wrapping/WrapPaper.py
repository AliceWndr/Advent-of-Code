sizeList=inputStr.splitlines(0)
sumSurface=0

for package in sizeList:
    indivSizes=package.split("x")
    a=int(indivSizes[0])
    b=int(indivSizes[1])
    c=int(indivSizes[2])
    side1=a*b
    side2=a*c
    side3=b*c
    smallestSide=min(side1,side2,side3)
    surface=2*(side1+side2+side3)+smallestSide
    sumSurface=sumSurface+surface

sumSurface
