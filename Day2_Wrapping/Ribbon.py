sizeList=inputStr.splitlines(0)
sumRibbon=0

for package in sizeList:
    indivSizes=package.split("x")
    a=int(indivSizes[0])
    b=int(indivSizes[1])
    c=int(indivSizes[2])
    volume=a*b*c
    halfPerim1=a+b
    halfPerim2=a+c
    halfPerim3=b+c
    smallestHalfPerim=min(halfPerim1,halfPerim2,halfPerim3)
    ribbon=2*(smallestHalfPerim)+volume
    sumRibbon=sumRibbon+ribbon

sumRibbon
