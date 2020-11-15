# Movie-converter-for-epometrope
連番画像を「専用2D映像」に変換するためのツール郡です。  
These are tools to convert rotating sequential images into "Dedicated 2D video".  

## Epometrope
エポメトロープを知らない人はまず<a rel="license" href="https://github.com/yutaka-miki/Epometorope" target="_blank"> こちら </a>を読んでみてください。  
If you don't know about epometrope, read about it <a rel="license" href="https://github.com/yutaka-miki/Epometorope" target="_blank"> here </a>.   

## Require
- <a rel="license" href="https://processing.org/download/" target="_blank"> Processing </a>

## Usage
ffmpeg -i Sample.avi -f image2 -vf fps=112.000896 Sample_jpg/%01d.jpg  
（Movie_converter_for_epometrope.pde を使う。）  
ffmpeg -r 7 -i Sample_jpg_alignment/%01d.jpg -r 15 Sample_alignment.mov  
ffmpeg -i Sample_alignment.mov -vf "transpose=2" Sample_alignment_rotate.mov  
ffmpeg -i Sample_alignment_rotate.mov -vf scale=800:-1 Sample_alignment_rotate_800.mov
