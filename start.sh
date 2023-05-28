if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Aneebrahman/AK-RENAMER-BOT-V3 /AK-RENAMER-BOT-V3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AK-RENAMER-BOT-V3
fi
cd /AK-RENAMER-BOT-V3
pip3 install -U -r requirements.txt
echo "MATRIX...."
python3 bot.py
