## Showcases
### Famous people singing "one day, we won't fight no more"

<table class="center">
  <tr>
    <td style="text-align: center"><b>Albert Einstein</b></td>
    <td style="text-align: center"><b>Marie Curie</b></td>
    <td style="text-align: center"><b>Mona Lisa</b></td>
  </tr>

  <tr>
    <td style="text-align: center"><img src="gifs/albert.gif"></a></td>
    <td style="text-align: center"><img src="gifs/mary.gif"></a></td>
    <td style="text-align: center"><img src="gifs/monalisa.gif"></a></td>
  </tr>
</table>

### Subjects from SHV dataset
#### Front Face video

<table class="center">
  <tr>
    <td style="text-align: center"><b>Subject1</b></td>
    <td style="text-align: center"><b>Subject2</b></td>
    <td style="text-align: center"><b>Subject3</b></td>
  </tr>
  <tr>
    <td style="text-align: center"><img src="gifs/sub2.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub11.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub12.gif"></a></td>
  </tr>
</table>

#### Side Profile


<table class="center">
  <tr>
    <td style="text-align: center"><b>Subject1</b></td>
    <td style="text-align: center"><b>Subject2</b></td>
    <td style="text-align: center"><b>Subject3</b></td>
  </tr>
  <tr>
    <td style="text-align: center"><img src="gifs/sub7.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub8.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub9.gif"></a></td>
  </tr>
</table>

### Different Art style

#### Sketch
<table class="center">
  <tr>
    <td style="text-align: center"><b>Subject1</b></td>
    <td style="text-align: center"><b>Subject2</b></td>
    <td style="text-align: center"><b>Subject3</b></td>
  </tr>
  <tr>
    <td style="text-align: center"><img src="gifs/sub13.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub15.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub22.gif"></a></td>
  </tr>
</table>

#### Comic
<table class="center">
  <tr>
    <td style="text-align: center"><b>Subject1</b></td>
    <td style="text-align: center"><b>Subject2</b></td>
    <td style="text-align: center"><b>Subject3</b></td>
  </tr>
  <tr>
    <td style="text-align: center"><img src="gifs/sub19.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub20.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub21.gif"></a></td>
  </tr>
</table>

#### Painting
<table class="center">
  <tr>
    <td style="text-align: center"><b>Subject1</b></td>
    <td style="text-align: center"><b>Subject2</b></td>
    <td style="text-align: center"><b>Subject3</b></td>
  </tr>
  <tr>
    <td style="text-align: center"><img src="gifs/sub16.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub17.gif"></a></td>
    <td style="text-align: center"><img src="gifs/sub18.gif"></a></td>
  </tr>
</table>

### Run Inference
To run the test case of the proposed method, run the `scripts/inference.py`,  pass `source_image` and `driving_audio` as input:

```bash
python scripts/inference_new.py --config configs/inference/inference.yaml --source_image examples/0001.jpg --driving_audio examples/0001.wav --output results/
```

The generated videos will be saved in the `results` folder.

For more options:

```shell
usage: inference.py [-h] [-c CONFIG] [--source_image SOURCE_IMAGE] [--driving_audio DRIVING_AUDIO] [--output OUTPUT] [--pose_weight POSE_WEIGHT]
                    [--face_weight FACE_WEIGHT] [--lip_weight LIP_WEIGHT] [--face_expand_ratio FACE_EXPAND_RATIO]

options:
  -h, --help            show this help message and exit
  -c CONFIG, --config CONFIG
  --source_image SOURCE_IMAGE
                        source image
  --driving_audio DRIVING_AUDIO
                        driving audio
  --output OUTPUT       output video file name
  --pose_weight POSE_WEIGHT
                        weight of pose
  --face_weight FACE_WEIGHT
                        weight of face
  --lip_weight LIP_WEIGHT
                        weight of lip
  --face_expand_ratio FACE_EXPAND_RATIO
                        face region
```

