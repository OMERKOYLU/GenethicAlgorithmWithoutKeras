import math
puanlar=[5,5,5,5,5,5,5,5,0,0]
# totalPuanlar=0
# for p in puanlar:
#     totalPuanlar+=p
mx=max(puanlar)
mn=min(puanlar)
maxPuan=max(puanlar)
# if maxPuan>rekor: rekor=maxPuan
# if totalPuanlar>0:
av=sum(puanlar)/len(puanlar)
farklar=[(p-av)**2 for p in puanlar]
t=sum(farklar)/(len(puanlar)-1)
standartSapma=math.sqrt(t)
print(standartSapma)
fitnesses=[(((p-av)/standartSapma)*10+50)/100 if standartSapma>0 else 0.0 for p in puanlar]
print(fitnesses)