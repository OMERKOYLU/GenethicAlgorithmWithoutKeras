import pygame
import sys
import os
import ast
import numpy as np
import time

id=sys.argv[1]
pygame.init()
ekran=pygame.display.set_mode((400,400))
# Clock=pygame.time.Clock()

x=200
y=200
xRaket=200
yRaket=300
VxRaket=0
Vx=1
Vy=2
puan=0
basla=False

class tugla:
    def __init__(self,x,y):
        self.rect=pygame.Rect(x,y,23,13)
tuglalar=[] #tuglalar adında bir liste tanımladık

for sutun in range(16):
    for satir in range(8):
        tuglalar.append(tugla(sutun * 25, 15 * satir))
# game over yazısı ###################################################################
pygame.font.init()
font=pygame.font.SysFont("Times New Roman",65)
goText=font.render("GAME OVER",(0,0,0),(255,0,0))
bitti=False
#######################################################################
fCommands=open("./aiModels/outputs/outputCommands"+id+".txt","w+")
#puan için ##############################################################
fontpuan=pygame.font.SysFont("Times New Roman",24)
puanText = fontpuan.render("puan:" +str(puan), (0, 0, 0), (255, 255, 255))
oyunSonuPuan=pygame.font.SysFont("Times New Roman",50)
oyunSonuPuanText = oyunSonuPuan.render(str(puan), (0, 0, 0), (255, 255, 255))
command=None
#########################################################################
# time.sleep(2)
while True:
    # Clock.tick(1000)
    ekran.fill((0, 0, 255))
    # f = open("./aiModels/inputs/" + inputFile, "a+")
    for olay in pygame.event.get():  #for yer değiştirdi
        if olay.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
    if pygame.key.get_pressed()[pygame.K_SPACE]:
        basla=True
    # if basla:
    if bitti: #####oyun bitti yazısını burası yazıyor
        fin = os.open("./aiModels/inputs/inputsFile" + id + ".txt", os.O_WRONLY | os.O_CREAT)
        ekran.blit(goText,(10,200))
        ekran.blit(oyunSonuPuanText, (180, 150))
        os.write(fin,str.encode("BİTTİ"))
        os.fsync(fin)
        os.close(fin)
        pygame.display.flip()
        time.sleep(2)
        break;
    if not bitti: #<2>## burdan sonraki kısımlar display flipe kadar bir sekme sağa
        # f.write("[")
        fin = os.open("./aiModels/inputs/inputsFile" + id + ".txt", os.O_WRONLY | os.O_CREAT)
        tglData = ""
        for a in tuglalar:
            if a is not  None:
                pygame.draw.rect(ekran,(255,0,0),a)
                tglData+="1,"
            else:
                tglData+="0,"
        tglData=tglData[:-1]
                # f.write("1")
            # else:
                # f.write("0")
        # f.write("]\n")
        if (y>390) or (y<10):
            Vy=-Vy
        if (x>390) or (x<10):
            Vx=-Vx
        if not pygame.key.get_pressed()[pygame.K_LEFT] and not pygame.key.get_pressed()[pygame.K_RIGHT]:
            VxRaket=0
        os.sync()
        commands=fCommands.readlines()
        if len(commands)>0:
            cmds=np.asarray(ast.literal_eval(commands[-1]))
            # cmds=np.fromstring(commands[-1][1:-2],dtype=float,sep=" ")
            command=np.argmax(cmds)
            # print(command)
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
            # print(VxRaket)
        x+=Vx
        y+=Vy

        rect = pygame.draw.rect(ekran, (0, 255, 0), (xRaket, yRaket, 100, 5))  # raketi çizer
        rectTop = pygame.draw.circle(ekran, (255, 255, 255), (x, y), 10.0)  # topu çizer
        os.write(fin, str.encode("["))  #### topun koordinatları ve hızı
        os.write(fin, str.encode(str((rectTop.x + 5.0) / 400) + ","))
        os.write(fin, str.encode(str((rectTop.y + 5.0) / 400) + ","))
        os.write(fin, str.encode(str(Vx/2) + ","))
        os.write(fin, str.encode(str(Vy/2) + ","))
        os.write(fin, str.encode(str((xRaket + 50) / 400) + ","))
        # os.write(fin, str.encode(str(yRaket+50/400) + ","))
        os.write(fin, str.encode(str(VxRaket / 10) + ","))
        os.write(fin, str.encode(tglData))
        os.write(fin,str.encode(","+str(puan)))

        if rect.colliderect(rectTop):
            Vx=Vx+(VxRaket/10)
            Vy=-Vy

        for tgl in tuglalar:
            if tgl is not None:
                if (rectTop.colliderect(tgl.rect)):
                    puan+=5
                    puanText = fontpuan.render("puan:" + str(puan), (0, 0, 0), (255, 255, 255))
                    oyunSonuPuanText = oyunSonuPuan.render(str(puan), (0, 0, 0), (255, 255, 255))
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
        os.write(fin, str.encode("]\n"))
        if rectTop.y>365:
            bitti=True
        ############################################################################################
        ekran.blit(puanText,(10,360))
        os.fsync(fin)
        os.close(fin)
    pygame.display.flip()