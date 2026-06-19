<div align="center">

<h2>DiFlow-TTS: Compact and Low-Latency Zero-Shot Text-to-Speech with Discrete Flow Matching</h2>

<a href="https://nngocson2002.github.io/"><strong><u>Ngoc-Son Nguyen</u></strong><sup>1</sup></a> &nbsp;&nbsp;&nbsp;
<a href="https://thanhtvt.github.io/"><strong><u>Thanh V. T. Tran</u></strong><sup>1</sup></a> &nbsp;&nbsp;&nbsp;
<a href="https://scholar.google.com/citations?user=sGFCHdcAAAAJ&hl=en"><strong><u>Hieu-Nghia Huynh-Nguyen</u></strong><sup>1</sup></a> &nbsp;&nbsp;&nbsp;
<a href="https://scholar.google.com/citations?user=JiKBo6UAAAAJ&hl=en"><strong><u>Truong-Son Hy</u></strong><sup>2</sup></a> &nbsp;&nbsp;&nbsp;
<a href="https://scholar.google.com/citations?user=rJe1704AAAAJ&hl=en"><strong><u>Van Nguyen</u></strong><sup>1†</sup></a>

<sup>1</sup> FPT Software AI Center, Vietnam &nbsp;&nbsp; <sup>2</sup> University of Alabama at Birmingham, USA

<sup>†</sup> Corresponding author

<a href='https://interspeech2026.org/en-AU'><img src='https://img.shields.io/badge/Interspeech%202026-Long%20Paper%20Track-0066CC'></a>
<a href='https://arxiv.org/abs/2509.09631'><img src='https://img.shields.io/badge/Paper-arXiv-b31b1b?logo=arxiv&logoColor=white'></a>
<a href='https://fsoft-aic.github.io/SonNN45-Demo/projects/diflowtts/'><img src='https://img.shields.io/badge/%F0%9F%8C%90_Demo-Page-orange'></a>
</div>

   

## 🔊 Framework

  ![DiFlowDubber Framework](assets/diflowtts.png)

## 🛠️ Dependencies & Installation

### 1. Set Up the Environment

Install the required dependencies using Conda:

```bash
conda env create -f environment.yaml
conda activate diflow
```
### 2. Download Models
- Download the pre-trained FACodec model from [HuggingFace](https://huggingface.co/amphion/naturalspeech3_facodec), and place the checkpoint files in the following structure:
```
root/
└── models/
    └── facodec/
        └── checkpoints/
            ├── ns3_facodec_encoder.bin
            └── ns3_facodec_decoder.bin

```
- Download the DiFlow-TTS model checkpoint from [Link](https://drive.google.com), and place it as follows:
```
root/
└── ckpts/
    └── diflow-tts.ckpt
```
## 🚀 Quick Inference

> [!NOTE]
> DiFlow-TTS is trained on 470 hours of the LibriTTS dataset, which consists of emotionally neutral speech. As a result, it may not perform well on prompts with strong emotional expression.

To synthesize a sample with DiFlow-TTS, follow these steps:

1. Open the script: [`scripts/synth_one_sample.sh`](scripts/synth_one_sample.sh)

2. Edit the following lines:

   * **Line 3**: Set the path to the DiFlow-TTS checkpoint.
   * **Line 4**: Set your input text.
   * **Line 5**: Set the path to your reference speech prompt.

3. Run the script with:

```bash
CUDA_VISIBLE_DEVICES=0 bash scripts/synth_one_sample.sh
```

## 🏋️‍♂️ Training
Coming soon!

## 📝 Citation
If you find this work useful, please cite:
```bibtex
@article{diflowtts,
      title={DiFlow-TTS: Compact and Low-Latency Zero-Shot Text-to-Speech with Discrete Flow Matching}, 
      author={Ngoc-Son Nguyen and Thanh V. T. Tran and Hieu-Nghia Huynh-Nguyen and Truong-Son Hy and Van Nguyen},
      journal = {Interspeech 2026},
      year={2026},
      url={https://arxiv.org/abs/2509.09631}, 
}
```
