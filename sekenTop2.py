import sys
import pygame

pygame.init()
ekran=pygame.display.set_mode((400,400))

x=200
y=200
xRaket=200
yRaket=300
Vx=0.1
Vy=0.2
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

#puan için ##############################################################
fontpuan=pygame.font.SysFont("Times New Roman",24)
puanText = fontpuan.render("puan:" +str(puan), (0, 0, 0), (255, 255, 255))
oyunSonuPuan=pygame.font.SysFont("Times New Roman",50)
oyunSonuPuanText = oyunSonuPuan.render(str(puan), (0, 0, 0), (255, 255, 255))
#########################################################################
while True:
    ekran.fill((0, 0, 255))
    for olay in pygame.event.get():  #for yer değiştirdi
        if olay.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
    if pygame.key.get_pressed()[pygame.K_SPACE]:
        basla=True
    if basla:
        if not bitti: #<2>## burdan sonraki kısımlar display flipe kadar bir sekme sağa
            for a in tuglalar:
                pygame.draw.rect(ekran,(255,0,0),a)
            if (y>390) or (y<10):
                Vy=-Vy
            if (x>390) or (x<10):
                Vx=-Vx
            if pygame.key.get_pressed()[pygame.K_LEFT] and xRaket>0:
                xRaket-=1
            if pygame.key.get_pressed()[pygame.K_RIGHT] and xRaket<300:
                xRaket+=1
            x+=Vx
            y+=Vy

            rect=pygame.draw.rect(ekran,(0,255,0),(xRaket,yRaket,100,5)) #raketi çizer
            rectTop=pygame.draw.circle(ekran,(255,255,255),(x,y),10.0)  #topu çizer

            if rect.colliderect(rectTop):
                Vy=-Vy

            for tgl in tuglalar:
                if (rectTop.colliderect(tgl.rect)):
                    puan+=5
                    puanText = fontpuan.render("puan:" + str(puan), (0, 0, 0), (255, 255, 255))
                    oyunSonuPuanText = oyunSonuPuan.render(str(puan), (0, 0, 0), (255, 255, 255))
                    ###########################################################
                    if tgl.rect.x-10<rectTop.x+10<tgl.rect.x or tgl.rect.x+13<rectTop.x<tgl.rect.x+23:
                        Vx=-Vx
                    if tgl.rect.y<rectTop.y+10<tgl.rect.y or tgl.rect.y+3<rectTop.y<tgl.rect.y+13:
                        Vy=-Vy
                    tuglalar.remove(tgl)
                    break
            # print(rectTop.y)
            #oyun bitiş kontrolü########################################################################
            if rectTop.y>365:
                bitti=True
            ############################################################################################
            ekran.blit(puanText,(10,360))
        if bitti: #####oyun bitti yazısını burası yazıyor
            ekran.blit(goText,(10,200))
            ekran.blit(oyunSonuPuanText, (180, 150))

    pygame.display.flip()