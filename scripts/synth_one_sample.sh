python synth_one_sample.py \
    --config_path configs/model.yaml \
    --ckpt_path /path/to/diflow-tts.ckpt \
    --text "<put your text here>" \
    --prompt_path /path/to/prompt.wav \
    --prompt_duration 3 \
    --n_timesteps 128 \
    --device cuda