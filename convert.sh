#cd /Users/hghg/Desktop/Movie_converter_for_epometrope
#sh convert.sh example 10
#!/bin/bash

ffmpeg -r $2 -i $1_alignment/%01d.jpg -r $2 $1_alignment.mov
ffmpeg -i $1_alignment.mov -vf "transpose=2" $1_alignment_rotate.mov
ffmpeg -i $1_alignment_rotate.mov -vf scale=800:-1 $1_alignment_rotate_800.mov
rm  $1_alignment.mov
rm  $1_alignment_rotate.mov

Exit 0