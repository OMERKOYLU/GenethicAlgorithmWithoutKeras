# import os
import time
# import ast
# import numpy as np
import subprocess
import threading
import random
import math
from decimal import Decimal, getcontext
from numba import njit

getcontext().prec=5
####AI MODEL##########################
# w=[[.0]*134,[.0]*134,[.0]*134]
#
# spec=[
#     ('weights',typeof(w))
# ]

# @jitclass(spec)
class model():

    weights=[[],[],[]]
    # print(weights)
    def __init__(self):
        # print(self.weights)
        # self.weights=[[.0]*134,[.0]*134,[.0]*134]
        for i in range(3):
            for j in range(134):
                a=random.uniform(-1.0,1.0)
                self.weights[i].append(a)
        # print(self.weights)

    def save_weights(self,filePath:str):
        open(filePath,"w+").close()
        f=open(filePath,"w+")
        f.write(str(self.weights))
        f.close()

    def load_model(self):
        return self()

    def load_weights(self,filePath:str):
        f=open(filePath,"r")
        lines=f.readlines()
        str=""
        for line in lines:
            str+=line
        if str!="":
            self.weights=ast.literal_eval(str)
        f.close()

    def predict(self,inputs):
        o1=0.0
        o2=0.0
        o3=0.0
        for i in inputs[0]:
            # print(i)
            for w in self.weights[0]:
                if i>6:
                    o1+=w*i
                else:
                    o1+=(0.01*w*i)
            for w in self.weights[1]:
                if i<6:
                    o2+=w*i
                else:
                    o2+=(0.01*w*i)
            for w in self.weights[2]:
                if i<6:
                    o3+=w*i
                else:
                    o3+=(0.01*w*i)
        def sig(x):
            return float(Decimal(1/(1+(Decimal(Decimal(math.e)**-Decimal(x))))))
        result=[sig(o1),sig(o2),sig(o3)]
        return result

    def get_weights(self):
        return self.weights

    def set_weights(self,weights:list):
        self.weights=weights

from numba.typed import List

@njit(fastmath=True)
def predict(wgts,inputs):
    o1=0.0
    o2=0.0
    o3=0.0
    for i in inputs:
        # print(i)
        for w in wgts[0]:
            if i>6:
                o1+=w*i
            else:
                o1+=(0.01*w*i)
        for w in wgts[1]:
            if i<6:
                o2+=w*i
            else:
                o2+=(0.01*w*i)
        for w in wgts[2]:
            if i<6:
                o3+=w*i
            else:
                o3+=(0.01*w*i)

    def sig(x):
        return float(1 / (1 + (math.e ** -x)))

    result = [sig(o1), sig(o2), sig(o3)]
    return result

jenerasyon=2000
count=1000
ous=[]
models=[None for i in range(count)]
puanlar=[]
maxPuan=0
rekor=30
weights=[None for i in range(count)]

for i in range(count):
    puanlar.append(0)
finished=0

game_process=None

####OYUN############################################################################

import pygame
# import sys
import os
import ast
import numpy as np
# import time

# id=sys.argv[1]
# id="0"
# pygame.init()
# ekran=pygame.display.set_mode((400,400))
# Clock=pygame.time.Clock()

class tugla:
    def __init__(self,x,y):
        self.rect=pygame.Rect(x,y,23,13)

# game over yazısı ###################################################################
# pygame.font.init()
# font=pygame.font.SysFont("Times New Roman",65)
# goText=font.render("GAME OVER",(0,0,0),(255,0,0))
# bitti=False
#######################################################################
# fCommands=open("./aiModels/outputs/outputCommands"+id+".txt","w+")
# #puan için ##############################################################
# fontpuan=pygame.font.SysFont("Times New Roman",24)
# puanText = fontpuan.render("puan:" +str(skor), (0, 0, 0), (255, 255, 255))
# oyunSonuPuan=pygame.font.SysFont("Times New Roman",50)
# oyunSonuPuanText = oyunSonuPuan.render(str(skor), (0, 0, 0), (255, 255, 255))
command=None
#########################################################################
# time.sleep(2)
def startGame(player:model,idx:int):
    global puanlar,weights,games,count,finished
    # print(idx+1,". oyun başladı")
    skor=0
    x = 200
    y = 200
    xRaket = 200
    yRaket = 300
    VxRaket = 0
    Vx = 1
    Vy = 2
    # basla = False
    bitti=False

    tuglalar = []  # tuglalar adında bir liste tanımladık

    for sutun in range(16):
        for satir in range(8):
            tuglalar.append(tugla(sutun * 25, 15 * satir))

    while True:
        # Clock.tick(1000)
        # ekran.fill((0, 0, 255))
        # f = open("./aiModels/inputs/" + inputFile, "a+")
        # for olay in pygame.event.get():  #for yer değiştirdi
        #     if olay.type == pygame.QUIT:
        #         pygame.quit()
        #         sys.exit()
        # if pygame.key.get_pressed()[pygame.K_SPACE]:
        #     basla=True
        # if basla:
        if bitti: #####oyun bitti yazısını burası yazıyor
            # fin = os.open("./aiModels/inputs/inputsFile" + id + ".txt", os.O_WRONLY | os.O_CREAT)
            # ekran.blit(goText,(10,200))
            # ekran.blit(oyunSonuPuanText, (180, 150))
            finished += 1
            # print(skor)
            puanlar[idx]=skor
            # puanlar[id] = puan
            # player.set_weights(weights[idx])
            saveModel(idx)
            weights[idx] = player.get_weights()
            # os.write(fin,str.encode("BİTTİ"))
            # os.fsync(fin)
            # os.close(fin)
            # pygame.display.flip()
            # time.sleep(2)
            break;
        if not bitti: #<2>## burdan sonraki kısımlar display flipe kadar bir sekme sağa
            # f.write("[")
            # fin = os.open("./aiModels/inputs/inputsFile" + id + ".txt", os.O_WRONLY | os.O_CREAT)
            tglData = []
            for a in tuglalar:
                if a is not  None:
                    # pygame.draw.rect(ekran,(255,0,0),a)
                    tglData.append(1)
                else:
                    tglData.append(0)
            # tglData=tglData[:-1]
                    # f.write("1")
                # else:
                    # f.write("0")
            # f.write("]\n")
            if (y>390) or (y<10):
                Vy=-Vy
            if (x>390) or (x<10):
                Vx=-Vx

            x+=Vx
            y+=Vy
            # print("x:",x,"y:",y)
            rect = pygame.Rect(xRaket, yRaket, 100, 5)
            # rect = pygame.draw.rect(ekran, (0, 255, 0), (xRaket, yRaket, 100, 5))  # raketi çizer
            # rectTop = pygame.draw.circle(ekran, (255, 255, 255), (x, y), 10.0)  # topu çizer
            rectTop = pygame.Rect(x, y, 10, 10)
            # print(rectTop)
            input = []
            input.append((rectTop.x + 5.0) / 400)
            input.append((rectTop.y + 5.0) / 400)
            input.append(Vx / 2)
            input.append(Vy / 2)
            input.append((xRaket + 50) / 400)
            input.append((yRaket + 50) / 400)
            input.append(VxRaket / 10)
            input = input + tglData
            # print(input)
            ws = List()
            for w in weights[idx]:
                a=List()
                for m in w:
                    a.append(m)
                ws.append(a)
            # print(ws)
            inp=List()
            for i in input:
                inp.append(i)
            outputs=predict(ws,inp)
            # outputs = player.predict([input])
            # print(outputs)
            command = np.argmax(np.asarray(outputs))
            # print(command)
            # print("komut:",command)

            # print(outputs)
            # if len(commands)>0:
            #     cmds=np.asarray(ast.literal_eval(commands[-1]))
            #     # cmds=np.fromstring(commands[-1][1:-2],dtype=float,sep=" ")
            #     command=np.argmax(cmds)
            #     # print(command)
            if (command == 0) and xRaket > 0:
                if VxRaket > -2:
                    VxRaket -= 0.4
                    # print(VxRaket)
                # print("sola gidiyorum")
                xRaket += VxRaket * 5
                # print(VxRaket)
            if (command == 1) and xRaket < 300:
                # print("sağa gidiyorum")
                # print("çarptı")
                VxRaket = 0
                # print(VxRaket)
                xRaket += VxRaket * 5

            if (command == 2) and xRaket < 300:
                # print("sağa gidiyorum")
                if VxRaket < 2:
                    VxRaket += 0.4
                xRaket += VxRaket * 5
            if rect.colliderect(rectTop):
                Vx=Vx+(VxRaket/10)
                Vy=-Vy
            for tgl in tuglalar:
                if tgl is not None:
                    # print(rectTop)
                    if (rectTop.colliderect(tgl.rect)):
                        skor+=5


                        # puanText = fontpuan.render("puan:" + str(skor), (0, 0, 0), (255, 255, 255))
                        # oyunSonuPuanText = oyunSonuPuan.render(str(skor), (0, 0, 0), (255, 255, 255))
                        ###########################################################
                        if tgl.rect.x-10<rectTop.x+10<tgl.rect.x or tgl.rect.x+13<rectTop.x<tgl.rect.x+23:
                            Vx=-Vx
                        if tgl.rect.y<rectTop.y+10<tgl.rect.y or tgl.rect.y+3<rectTop.y<tgl.rect.y+13:
                            Vy=-Vy
                        tuglalar[tuglalar.index(tgl)]=None
                        # os.write(fin, str.encode("],"))
                        # os.write(fin, str.encode("["))
                        # tglData=""
                        # for a in tuglalar:  ####her adımda tuglalar
                            # if a is not None:
                                # tglData+="1,"
                                # os.write(fin, str.encode("1,"))
                            # else:
                                # tglData+="0,"
                                # os.write(fin, str.encode("0,"))
                        # tglData=tglData[:-1]
                        break
            # print(rectTop.y)
            #oyun bitiş kontrolü########################################################################
            # os.write(fin, str.encode("]\n"))
            if rectTop.y>365:
                bitti=True
            ############################################################################################
            # ekran.blit(puanText,(10,360))
            # os.fsync(fin)
            # os.close(fin)
            # pygame.display.flip()


#########Yapay Zeka###########################

# for i in range(count):
#     ous.append(os.open("./aiModels/outputs/outputCommands" + str(i) + ".txt", os.O_WRONLY | os.O_CREAT))

def start_game():
    command = ""
    global game_process
    global ous
    for i in range(count):
        command += "python3 ./sekenTopNonGUI.py " + str(i) + " & "
    game_process=subprocess.run(command[:-3],shell=True)

def create_model():
    return model()

def loadModels():
    global models
    global count
    global weights
    for i in range(count):
        # if os.path.isfile("./aiModels/weights/mWeight" + str(i) + ".model"):
        #     models[i]=models.load_model("./aiModels/weights/mWeight" + str(i) + ".model")
        models[i] = create_model()
        # print(str(i))
        if os.path.isfile("./aiModels/WOKerasWeights/mWeight" + str(i) + ".ok"):
            models[i].load_weights("./aiModels/WOKerasWeights/mWeight" + str(i) + ".ok")
        weights[i]=models[i].get_weights()

def mutate_models():
    global weights
    global models
    global puanlar
    fitnesses=getFitnesses()
    for i in range(len(fitnesses)):
        if fitnesses[i]<.75:
            # print(weights[i])
            for xi in range(len(weights[i])):
                for yi in range(len(weights[i][xi])):
                    # print(len(weights[i][xi][yi]))
                    # for ji in range(len(weights[i][xi][yi])):
                    if random.uniform(0.0, 1.0) > 0.85:
                        change = random.uniform(-0.5, 0.5)
                        weights[i][xi][yi] += change
                        # if weights[i][xi][yi]<-1: weights[i][xi][yi]=-1.0
                        # if weights[i][xi][yi]>1: weights[i][xi][yi]=1.0
            print("model ", i, " Mutasyon İşlemi Yapıldı")
            models[i].set_weights(weights[i])


def crossOver():
    global models
    global weights
    global puanlar
    global count
    fitnesses=getFitnesses()
    indexes=[]
    for i in range(len(fitnesses)):
        if fitnesses[i]>=.75:
            indexes.append(i)
    for i in range(len(indexes)):
        if i<len(indexes)-1:
            for s in range(3):
                indices=list(range(134))
                indices=random.sample(indices,67)
                for indice in indices:
                    tmpWx1=weights[indexes[i]][s][indice]
                    tmpWx2 = weights[indexes[i+1]][s][indice]
                    weights[indexes[i]][s][indice]=tmpWx2
                    weights[indexes[i+1]][s][indice]=tmpWx1
            models[indexes[i]].set_weights(weights[indexes[i]])
            models[indexes[i+1]].set_weights(weights[indexes[i+1]])

    # for i in range(len(indexes)):
    #     if i<len(indexes)-1:
    #         print(weights[indexes[i]])
    #         tmpWeights=weights[indexes[i]][0]
    #         tmpWeights2=weights[indexes[i+1]][0]
    #         weights[indexes[i]][0]=tmpWeights2
    #         weights[indexes[i+1]][0] = tmpWeights
    #         models[indexes[i]].set_weights(weights[indexes[i]])
    #         models[indexes[i+1]].set_weights(weights[indexes[i+1]])
    #         print("model ", indexes[i], " Crossover İşlemi Yapıldı")

def getFitnesses():
    global puanlar
    global maxPuan
    global rekor
    # totalPuanlar=0
    # for p in puanlar:
    #     totalPuanlar+=p
    mx=max(puanlar)
    mn=min(puanlar)
    maxPuan=max(puanlar)
    if maxPuan>rekor: rekor=maxPuan
    # if totalPuanlar>0:
    av=sum(puanlar)/len(puanlar)
    diff=mx-mn if mx>mn else 1
    fitnesses=[(((p-av)/diff)+1)/2 for p in puanlar]
    return fitnesses


def saveModel(id):
    # Sequential.save_weights()
    global models
    # models[id].save("./aiModels/weights/mAI"+str(id)+".model",)
    models[id].save_weights(filePath="./aiModels/WOKerasWeights/mWeight"+str(id)+".ok")

def makePredict(datas,id):
    global models
    global puanlar
    global ous
    try:
        inputDatas = ast.literal_eval(datas)
        # print(np.asarray(inputDatas).shape)
        input = np.asarray(inputDatas)
        # print(input)
        prd = models[id].predict(input[:-1].reshape(-1,134))
        # print(prd)
        os.write(ous[id], str.encode(str(prd) + "\n"))
        os.fsync(ous[id])
    except Exception as e:
        print("tahmin oluşturulamadı: ", e)

def startAIProcess():
    global weights
    global finished
    global count
    global models
    global maxPuan
    while True:
        for id in range(count):
            if os.path.isfile("./aiModels/inputs/inputsFile" + str(id) + ".txt"):
                # print("girdiler okunuyor")
                fd = open("./aiModels/inputs/inputsFile" + str(id) + ".txt", "r+")
                # data=""
                os.sync()
                datas=fd.readline()
                if len(datas)>=1:
                    # print(datas)
                    if not "BİTTİ" in datas:
                        makePredict(datas,id)
                    else:
                        open("./aiModels/inputs/inputsFile"+str(id)+".txt","w").close()
                        s=datas.rindex(",")
                        f=datas.index("]")
                        puan=float(datas[s+1:f])
                        puanlar[id]=puan
                        saveModel(id)
                        weights[id]=models[id].get_weights()
                        finished+=1

                # time.sleep(0.1)
        if finished==count:
            if max(puanlar)>maxPuan:
                maxPuan=max(puanlar)
            # for i in range(count):
                # os.close(ous[i])
            # break

# ai=threading.Thread(target=startAIProcess())
# ai.start()

j=1
loadModels()
games=[]
finishedGames=[1]*count
processStarted=True
while True:
    if processStarted:
        print(j,". jenerasyon yüklendi \n oyun başlıyor...")
        j+=1
        print(puanlar)
        print(maxPuan)
        fits=getFitnesses()
        print(fits)
        print(rekor)
        idx=0
        # if max(fits)>0:
        #     crossOver()
        #     mutate_models(,
        games.clear()
        finishedGames=[1]*count
        for i in range(count):
            games.append(threading.Thread(target=startGame, args=(models[i], i)))
        for game in games:
            game.start()
        processStarted=False
    if finished==count:
        crossOver()
        mutate_models()
        processStarted=True
        finished=0
    else:
        # print(finished)
        continue
    # for i in range(count):
    #     open("./aiModels/inputs/inputsFile"+str(i)+".txt","w+").close()
    #     ous[i]=os.open("./aiModels/outputs/outputCommands" + str(i) + ".txt", os.O_WRONLY|os.O_CREAT)
    # finished=0
    # startAIProcess()
    if j>jenerasyon:
        break