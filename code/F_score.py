import os
def FScore(directory):
    true_positive = 0
    false_positive = 0
    false_negative = 0
    F_score = 0
    for filename in os.listdir(directory):
        if filename.endswith(".txt"):
            print(filename)
            countTruePred = 0
            countFalsePred = 0
            countTrueGt = 0
            countFalseGt = 0
            with open(os.path.join(directory,filename), "r") as a_file:
                for line in a_file:
                    stripped_line = line.strip()
                    if 'pred' in stripped_line:
                        if 'True' in stripped_line:
                            countTruePred += 1
                        if 'False' in stripped_line:
                            countFalsePred += 1
                    if 'gt' in stripped_line:
                        if 'True' in stripped_line:
                            countTrueGt += 1
                        if 'False' in stripped_line:
                            countFalseGt += 1
                # read through a file
                # now time to update the variables
                # both pred and gt are true - true positive
                if countTruePred == 1 and countTrueGt == 1:
                    true_positive += 1
                # pred is false and gt is true - false negative
                if countFalsePred == 1 and countTrueGt == 1:
                    false_negative += 1
                # pred is true and gt is false - false positive
                if countTruePred == 1 and countFalseGt == 1:
                    false_positive += 1
        else:
            continue
    numerator = true_positive
    denominator = true_positive + 0.5*(false_negative + false_positive)
    F_score = numerator / denominator
    return F_score

# f = FScore("/data/graceduansu/where2act/code/logs/exp-model_3d_critic-turn-clockwise-Faucet-train_3d_critic_Blender/val_visu/epoch-0110/info")
# f = FScore("/data/graceduansu/where2act/code/logs/exp-model_3d_critic-turn-clockwise-None-train_3d_critic/val_visu/epoch-0090/info")
f = FScore("/data/graceduansu/where2act/code/logs/exp-model_3d-turn-clockwise-Faucet-train_3d_1Blender/val_visu/epoch-0230/info")
print(f)
