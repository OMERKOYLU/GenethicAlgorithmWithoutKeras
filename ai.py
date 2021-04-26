import os
import time
import ast
# import sys
import numpy as np
# import ray
# from tensorflow.keras import models
# from tensorflow.keras.models import  Sequential
# from tensorflow.keras.layers import Dense, Activation, Flatten
# from tensorflow.keras.optimizers import SGD
import subprocess
import threading
from aiWOKERAS import getFitnesses,crossOver,mutate_models,model,loadModels

print("GUI test Başlıyor!")

jenerasyon=500
count=10
ous=[]
models=[None for i in range(count)]
puanlar=[]
maxPuan=55
weights=[None for i in range(count)]

for i in range(count):
    puanlar.append(0)
finished=0

game_process=None

# ray.init()

for i in range(count):
    ous.append(os.open("./aiModels/outputs/outputCommands" + str(i) + ".txt", os.O_WRONLY | os.O_CREAT))

def start_game():
    command = ""
    global game_process
    global ous
    for i in range(count):
        command += "python3 ./sekenTop.py " + str(i) + " & "
    game_process=subprocess.run(command[:-3],shell=True)

def create_model():
    # from tensorflow.keras.models import Sequential
    # from tensorflow.keras.layers import Dense, Activation, Flatten
    # from tensorflow.keras.optimizers import SGD
    # model = Sequential()
    # # model.add(Flatten())
    # model.add(Dense(12, input_dim=134))
    # model.add(Activation("sigmoid"))
    # model.add(Dense(2))
    # model.add(Activation("sigmoid"))
    #
    # sgd = SGD(lr=0.01, decay=1e-6, momentum=0.9, nesterov=True)
    # model.compile(loss="mse", optimizer=sgd, metrics=["accuracy"])
    return model()

# def loadModels():
#     global models
#     for i in range(count):
#         if os.path.isfile("./aiModels/weights/mWeight" + str(i) + ".model"):
#             models[i]=models.load_model("./aiModels/weights/mWeight" + str(i) + ".model")
#             if os.path.isfile("./aiModels/weights/mWeight" + str(i) + ".keras"):
#                 models[i].load_weights("./aiModels/weights/mWeight" + str(i) + ".keras")
#         else:
#             models[i]=create_model()
#         saveModel(i)
#
# def mutate_models():
#     global weights
#     global models
#     global puanlar
#     fitnesses=getFitnesses()
#     for i in range(len(fitnesses)):
#         if fitnesses[i]<.5:
#             for xi in range(len(weights[i])):
#                 for yi in range(len(weights[i][xi])):
#                     if random.uniform(0, 1) > 0.65:
#                         change = random.uniform(-0.5, 0.5)
#                         weights[i][xi][yi] += change
#             print("model ", i, " Mutasyon İşlemi Yapıldı")
#             models[i].set_weights(weights[i])


# def crossOver():
#     global models
#     global weights
#     global puanlar
#     global count
#     fitnesses=getFitnesses()
#     idx=[]
#     for i in range(len(fitnesses)):
#         if fitnesses[i]>=.5:
#             idx.append(i)
#     for i in range(len(idx)):
#         if i<len(idx)-1:
#             tmpWeights=weights[idx[i]][0]
#             tmpWeights2=weights[idx[i+1]][0]
#             weights[idx[i]][0]=tmpWeights2
#             weights[idx[i+1]][0] = tmpWeights
#             models[idx[i]].set_weights(weights[idx[i]])
#             models[idx[i+1]].set_weights(weights[idx[i+1]])
#             print("model ", idx[i], " Crossover İşlemi Yapıldı")

# def getFitnesses():
#     global puanlar
#     totalPuanlar=0
#     for p in puanlar:
#         totalPuanlar+=p
#     if totalPuanlar>0:
#         fitnesses=[p/totalPuanlar for p in puanlar]
#         return fitnesses
#     else:
#         return [0 for p in puanlar]


def saveModel(id):
    # Sequential.save_weights()
    global models
    # models[id].save("./aiModels/weights/mAI"+str(id)+".model",)
    models[id].save_weights("./aiModels/GUI/weights/mWeight"+str(id)+".ok")#,overwrite=True, save_format="h5")

def makePredict(datas,id):
    global models
    global puanlar
    global ous
    try:
        inputDatas = ast.literal_eval(datas)
        # print(np.asarray(inputDatas).shape)
        input = np.asarray(inputDatas)
        # print(input)
        puanlar[id] = input[-1]
        prd = models[id].predict(input[:-1].reshape(-1,134))
        # print(ous)
        os.write(ous[id], str.encode(str(prd[0]) + "\n"))
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
                        saveModel(id)
                        weights[id]=models[id].get_weights()
                        finished+=1

                time.sleep(0.1)
        if finished==count:
            if max(puanlar)>maxPuan:
                maxPuan=max(puanlar)
            for i in range(count):
                os.close(ous[i])
            break

# ai=threading.Thread(target=startAIProcess())
# ai.start()
j=1
loadModels(models,10)
while True:
    print(j,". jenerasyon yüklendi \n oyun başlıyor...")
    j+=1
    print(puanlar)
    print(maxPuan)
    fits=getFitnesses()
    print(fits)
    if max(fits)>0:
        crossOver()
        mutate_models()
    for i in range(count):
        open("./aiModels/inputs/inputsFile"+str(i)+".txt","w+").close()
        ous[i]=os.open("./aiModels/outputs/outputCommands" + str(i) + ".txt", os.O_WRONLY|os.O_CREAT)
    game = threading.Thread(target=start_game)
    game.start()
    finished=0
    startAIProcess()
    if j>jenerasyon:
        break