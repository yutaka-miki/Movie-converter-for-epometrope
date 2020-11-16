# Movie-converter-for-epometrope
連番画像を「専用2D映像」に変換するためのツール郡です。  
These are tools to convert rotating sequential images into "Dedicated 2D video".  

## Epometrope
エポメトロープを知らない人はまず<a rel="license" href="https://github.com/yutaka-miki/Epometorope" target="_blank"> こちら </a>を読んでみてください。  
If you don't know about epometrope, read about it <a rel="license" href="https://github.com/yutaka-miki/Epometorope" target="_blank"> here </a>.   

## Require
- <a rel="license" href="https://ffmpeg.org" target="_blank">ffmpeg</a>
- <a rel="license" href="https://processing.org/download/" target="_blank">Processing</a>

## Usage
#### (1)「Movie_converter_for_epometrope」をダウンロードする。  
  
#### (2) <a rel="license" href="https://github.com/yutaka-miki/Epometorope#%E3%82%B3%E3%83%B3%E3%83%86%E3%83%B3%E3%83%84%E9%96%8B%E7%99%BA" target="_blank">Epometrope-コンテンツ開発</a>にしたがい、動画もしくは連番画像を用意する。用意した動画もしくは連番画像は「Movie_converter_for_epometrope」下に配置する。  
  
#### (3)ターミナルを開き「Movie_converter_for_epometrope」に移動する。
~~~
cd /Users/(USER_NAME)/Desktop/Movie_converter_for_epometrope
~~~

#### (4) 動画を連番画像に変換します。**連番画像を用意した場合は(4)はスキップしてください。**
~~~
ffmpeg -i Sample.avi -f image2 -vf fps=(FRAME_LATE) Sample_jpg/%01d.jpg
#example
ffmpeg -i Sample.avi -f image2 -vf fps=(FRAME_LATE) Sample_jpg/%01d.jpg
~~~

#### (5) 連番画像を「Movie_converter_for_epometrope.pde」を使ってタイル状に並べた画像に変換します。

#### (6) 変換画像を「専用2D映像（動画）」に変換する。
~~~
ffmpeg -i Sample.avi -f image2 -vf fps=(FRAME_LATE) Sample_jpg/%01d.jpg
#example
ffmpeg -i Sample.avi -f image2 -vf fps=(FRAME_LATE) Sample_jpg/%01d.jpg
~~~

#### (7)「専用2D映像」をエポメトロープ上で再生する。  
ofxEpometrope  
https://github.com/yutaka-miki/ofxEpometrope  

ffmpeg -i Sample.avi -f image2 -vf fps=112.000896 Sample_jpg/%01d.jpg  
（Movie_converter_for_epometrope.pde を使う。）  
ffmpeg -r 7 -i Sample_jpg_alignment/%01d.jpg -r 15 Sample_alignment.mov  
ffmpeg -i Sample_alignment.mov -vf "transpose=2" Sample_alignment_rotate.mov  
ffmpeg -i Sample_alignment_rotate.mov -vf scale=800:-1 Sample_alignment_rotate_800.mov
