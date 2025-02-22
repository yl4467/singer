CUDA_VISIBLE_DEVICES=7 accelerate launch -m \
  --config_file accelerate_config.yaml \
  --machine_rank 0 \
  --main_process_ip 0.0.0.0 \
  --main_process_port 20057 \
  --num_machines 1 \
  --num_processes 1 \
  scripts.train_revised --config ./configs/train/stage2_revised.yaml