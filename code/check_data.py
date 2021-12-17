import os
from glob import iglob
import glob
from datagen import DataGen


dir_list = ['/data/graceduansu/where2act/data/test-turnclockwise/*/', '/data/graceduansu/where2act/data/train_test-turnclockwise/*/', '/data/graceduansu/where2act/data/train_train-turnclockwise/*/']
datagen = DataGen(4)

for reg_ex in dir_list:
    y = reg_ex[:-1].rfind('/')
    data_dir = reg_ex[:y]
    print('-----------------------------------')
    print(data_dir)
    
    for dir in iglob(reg_ex):
        if len(glob.glob(dir + '*.png')) == 0:
            x = dir[:-1].rfind('/')
            fn = dir[x:]
            print(fn)
            ls = fn.split('_')
            ls[0] = ls[0][1:]
            ls[4] = ls[4][:-1]
            print(ls)
            
            datagen.add_one_collect_job(data_dir, ls[0], ls[1], int(ls[2]), ls[3], int(ls[4]))

    datagen.start_all()

    data_tuple_list = datagen.join_all()
    with open(os.path.join(data_dir, 'data_tuple_list.txt'), 'a') as fout:
        for item in data_tuple_list:
            fout.write(item.split('/')[-1]+'\n')