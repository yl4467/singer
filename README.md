<h1> Source code: SINGER: Vivid Audio-driven Singing Video Generation with Multi-scale Spectral Diffusion Model</h1>


[![Project Website](https://img.shields.io/badge/Project-Website-Green)](https://yl4467.github.io/)
[![arXiv](https://img.shields.io/badge/ArXiv-2312.02813-red)](https://arxiv.org/abs/2412.03430)
[![HuggingFace](https://img.shields.io/badge/HuggingFace-Model-yellow)](https://huggingface.co/yl2333/SINGER)
[![Code](https://img.shields.io/badge/Github-Code-blue)](https://huggingface.co/yl2333/SINGER)

## Framework 
The framework of the proposed method SINGER.
![framework](assets/framework_v3.png)

## Showcases
<table class="center">
  <tr>
    <td style="text-align: center"><img src="assets/sy1.gif"></a></td>
    <td style="text-align: center"><img src="assets/sy2.gif"></a></td>
    <td style="text-align: center"><img src="assets/wsy1.gif"></a></td>
    <td style="text-align: center"><img src="assets/wsy2.gif"></a></td>
  </tr>
</table>
More showcases can be seen in our project website https://yl4467.github.io/ 

## Usage of SINGER
### Environment
Create conda environment:

```bash
  conda create -n singer python=3.10
  conda activate singer
```

Then install the required packages with `pip`

```bash
  pip install -r requirements.txt
  pip install .
```

### Download the pretrained model
Download our pretrained model from [HuggingFace](https://huggingface.co/yl2333/SINGER) and change the corresponding model directory path `audio_ckpt_dir` in the `config/inference/inference.yaml`.
|  Model | Download Link |   
|:--------:|:------------:|
|audio_separator |  [https://huggingface.co/huangjackson/Kim_Vocal_2](https://huggingface.co/huangjackson/Kim_Vocal_2)     |
|insightface | [https://github.com/deepinsight/insightface/tree/master/python-package#model-zoo](https://github.com/deepinsight/insightface/tree/master/python-package#model-zoo)|
|face landmarker | [https://storage.googleapis.com/mediapipe-models/face_landmarker/face_landmarker/float16/1/face_landmarker.task](https://storage.googleapis.com/mediapipe-models/face_landmarker/face_landmarker/float16/1/face_landmarker.task) |
|motion module | [https://github.com/guoyww/AnimateDiff/blob/main/README.md#202309-animatediff-v2](https://github.com/guoyww/AnimateDiff/blob/main/README.md#202309-animatediff-v2)|
|sd-vae-ft-mse | [https://huggingface.co/stabilityai/sd-vae-ft-mse](https://huggingface.co/stabilityai/sd-vae-ft-mse)|
|StableDiffusion V1.5|[https://huggingface.co/runwayml/stable-diffusion-v1-5](https://huggingface.co/runwayml/stable-diffusion-v1-5)|
|wav2vec | [https://huggingface.co/facebook/wav2vec2-base-960h](https://huggingface.co/facebook/wav2vec2-base-960h)|

Download these models into the `./pretrained_model/` folder, otherwise you need to modify the model paths in the `config/inference/inference.yaml` to your own model downloaded paths.

### Prepare audios and reference images
Prepare you own singing audios and the reference images and change the `--driving_audio` and `--source_image` into the right path. Make sure your singing audio is in the `.wav` format. You can also use our provided samples in `example` folder to test the perfromance.


### Run Inference
To run the test case of the proposed method, run the `scripts/inference.py`,  pass `source_image` and `driving_audio` as input:

```bash
python scripts/inference_new.py --config configs/inference/inference.yaml --source_image examples/0001.jpg --driving_audio examples/0001.wav --output results/
```
The generated videos will be saved in the `results` folder.

### Run Training
#### data prepare

We follow the data processing process of [hallo](https://github.com/fudan-generative-vision/hallo), after processing the data, put the generated json files into the `./data/` folder, or change the path `train_meta_paths` in the config file `config/train/train_revised.yaml`.

#### Download the stage1 model
And before training, you need to download the required stage1 models from our [huggingface](https://huggingface.co/yl2333/SINGER) into the `./pretrained_models/` folder or modify the stage1 model path `stage1_ckpt_dir` in the config file `config/train/train_revised.yaml`.

#### Training
Then run the following command to train the model:
```
CUDA_VISIBLE_DEVICES=0,1,2,3 accelerate launch -m \
  --config_file accelerate_config.yaml \
  --machine_rank 0 \
  --main_process_ip 0.0.0.0 \
  --main_process_port 20056 \
  --num_machines 1 \
  --num_processes 4 \
  scripts.train_revised --config ./configs/train/train_revised.yaml
```

## BibTex

If you find this project useful, please cite our paper:
```
@misc{li2024singervividaudiodrivensinging, 
    title={SINGER: Vivid Audio-driven Singing Video Generation with Multi-scale Spectral Diffusion Model}, 
    author={Yan Li and Ziya Zhou and Zhiqiang Wang and Wei Xue and Wenhan Luo and Yike Guo}, 
    year={2024}, 
    eprint={2412.03430}, 
    archivePrefix={arXiv}, 
    primaryClass={cs.CV}, 
    url={https://arxiv.org/abs/2412.03430}, 
}
```

## Credits
Thanks to the [hallo](https://github.com/fudan-generative-vision/hallo), [WaveDiff](https://github.com/VinAIResearch/WaveDiff) and [FcaNet](https://github.com/cfzd/FcaNet) repositories,  for their open research and exploration.
