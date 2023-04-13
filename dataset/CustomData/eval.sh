cd dataset/CustomData
rm submit.zip
cp $1/*.txt submit
cd submit/;zip -r  submit.zip * &> ../log.txt ;mv submit.zip ../; cd ../
rm log.txt
pwd
python Evaluation_Protocol/script.py -g=gt.zip -s=submit.zip
