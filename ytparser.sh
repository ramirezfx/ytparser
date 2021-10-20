BASEPATH=$(kdialog --getexistingdirectory .)
REDIRECTURL="https://speedypreneur.com"
IMGFILTER="AD-*.png"
# REALPATH=$(realpath --relative-to=$BASEPATH $IMGNAME)
cp body.txt.template body.txt
YTID=$(kdialog --title "Enter YT-ID" --inputbox "Enter The YouTube-ID:" "YouTube-ID")
REDIRECTURL=$(kdialog --title "Re-Direct-URL" --inputbox "Enter The Redirect-URL")
IMGNAME=$(kdialog --getopenfilename "$BASEPATH"/assets/images "$IMGFILTER")
IMGPATH=$(realpath --relative-to=$BASEPATH $IMGNAME)
sed -i "s/VIDEOID/$YTID/g" body.txt
sed -i "s|REDIRECTURL|$REDIRECTURL|g" body.txt
sed -i "s|IMGPATH|$IMGPATH|g" body.txt
