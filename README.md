# Movie-converter-for-epometrope
ffmpeg -i Sample.avi -f image2 -vf fps=112.000896 Sample_jpg/%01d.jpg  
（Movie_converter_for_epometrope.pde を使う。）  
ffmpeg -r 7 -i Sample_jpg_alignment/%01d.jpg -r 15 Sample_alignment.mov  
ffmpeg -i Sample_alignment.mov -vf "transpose=2" Sample_alignment_rotate.mov  
