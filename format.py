import sys
newFile = open("video_game_data.json", "w")
count = 0
with open('./Video_Games_5.json') as file:
    for line in file:
        if(count == 0):
            newFile.write("[" + line.rstrip())
        else:
          newFile.write(",\n" + line.rstrip())
        count += 1
        if(count % 10000 == 0):
            print(str(count) + " lines written")
  
newFile.write("]")

newFile.close()
