# python visu_critic_heatmap.py \
#   --exp_name finalexp-model_all_final-pulling-None-train_all_v1 \
#   --model_epoch 81 \
#   --model_version model_3d_critic_legacy \
#   --shape_id $1 \
#   --overwrite \
#   --device cuda:6

python visu_critic_heatmap.py \
  --exp_name exp-model_3d_critic-turn-clockwise-Faucet-train_3d_critic_1Blender \
  --model_epoch 93 \
  --model_version model_3d_critic \
  --shape_id $1 \
  --overwrite \
  --device cuda:6