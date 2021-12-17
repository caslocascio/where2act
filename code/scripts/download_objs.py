import os
#ModelNames=["3517","3614","3822","4118","4216","9003","8903","8994","9127","9281","885","920","167","960","1343","7296","7349","101921","101930","101943","102001","102060","102662","102654","102692","103227","102707","3763","4200","4084","3520","3596","3678", "3990","4314","4043","3933","8867","9035","9065","9410","8897","8903","8936","9288","9277","9164","149","168","931","148","152","153","156","912","885","1380","7167","7128","7273","101917","101773","102055","101808","101908","101319","101323","102628","102636","102645","100282","100283","103518","103475","103486","103553", "100845", "100866", "100971"]
ModelNames = ["101808", "101908", "101773"]
print(len(ModelNames)) # 78 models
#declare -a links = ["
token= "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Imcuc3VAY29sdW1iaWEuZWR1IiwiaXAiOiIxNzIuMjAuMC4xIiwicHJpdmlsZWdlIjoxLCJpYXQiOjE2MzkxMTg3MDUsImV4cCI6MTYzOTIwNTEwNX0.lCM7zPMXbT9mNqePv4QGMwHzpBZ2JVkGyS57C9qY6Ck"
# Iterate the string variable using for loop
for i in ModelNames:
    fn = "/data/graceduansu/where2act/data/where2act_original_sapien_dataset/" + i
    print(i)
    cmd = "wget -O {}.zip https://sapien.ucsd.edu/api/download/compressed/{}.zip?token={}".format(fn, i, token)
    os.system(cmd)
    cmd1 = "unzip {}.zip -d /data/graceduansu/where2act/data/where2act_original_sapien_dataset/".format(fn)
    os.system(cmd1)
    cmd2 = " mv {}/mobility.urdf {}/mobility_vhacd.urdf".format(fn, fn)
    os.system(cmd2)
   