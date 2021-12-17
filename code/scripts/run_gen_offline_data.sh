python gen_offline_data.py \
  --data_dir /data/graceduansu/where2act/data/1Blender_train_train-turnclockwise \
  --data_fn /data/graceduansu/where2act/stats/train_train_data_list_TURN.txt \
  --primact_types turn-clockwise \
  --category_types Faucet \
  --num_processes 4 \
  --num_epochs 10 \
  --ins_cnt_fn /data/graceduansu/where2act/stats/ins_cnt_train_TURN.txt

python gen_offline_data.py \
  --data_dir /data/graceduansu/where2act/data/1Blender_train_test-turnclockwise \
  --data_fn /data/graceduansu/where2act/stats/train_test_data_list_TURN.txt \
  --primact_types turn-clockwise \
  --category_types Faucet \
  --num_processes 4 \
  --num_epochs 10 \
  --ins_cnt_fn /data/graceduansu/where2act/stats/ins_cnt_train_TURN.txt

python gen_offline_data.py \
  --data_dir /data/graceduansu/where2act/data/1Blender_test-turnclockwise \
  --data_fn /data/graceduansu/where2act/stats/test_data_list_TURN.txt \
  --primact_types turn-clockwise \
  --category_types Faucet \
  --num_processes 4 \
  --num_epochs 10 \
  --ins_cnt_fn /data/graceduansu/where2act/stats/ins_cnt_test_TURN.txt

# python gen_offline_data.py \
#   --data_dir /data/graceduansu/where2act/data/train_train-turncounterclockwise \
#   --data_fn /data/graceduansu/where2act/stats/train_train_data_list_TURN.txt \
#   --primact_types turn-counterclockwise \
#   --num_processes 4 \
#   --num_epochs 10 \
#   --ins_cnt_fn /data/graceduansu/where2act/stats/ins_cnt_train_TURN.txt

# python gen_offline_data.py \
#   --data_dir /data/graceduansu/where2act/data/train_test-turncounterclockwise \
#   --data_fn /data/graceduansu/where2act/stats/train_test_data_list_TURN.txt \
#   --primact_types turn-counterclockwise \
#   --num_processes 4 \
#   --num_epochs 10 \
#   --ins_cnt_fn /data/graceduansu/where2act/stats/ins_cnt_train_TURN.txt

# python gen_offline_data.py \
#   --data_dir /data/graceduansu/where2act/data/test-turncounterclockwise \
#   --data_fn /data/graceduansu/where2act/stats/test_data_list_TURN.txt \
#   --primact_types turn-counterclockwise \
#   --num_processes 4 \
#   --num_epochs 10 \
#   --ins_cnt_fn /data/graceduansu/where2act/stats/ins_cnt_test_TURN.txt