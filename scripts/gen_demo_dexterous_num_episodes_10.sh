# bash scripts/gen_demo_dexterous_num_episodes_10.sh cheers
#修改之处
cd third_party/VRL3/src

task=${1}

CUDA_VISIBLE_DEVICES=0 python gen_demonstration_expert.py --env_name $task \
                        --num_episodes 10 \
                        --root_dir "../../../3D-Diffusion-Policy/data/" \
                        --expert_ckpt_path "../ckpts/vrl3_${task}.pt" \
                        --img_size 84 \
                        --not_use_multi_view \
                        --use_point_crop
