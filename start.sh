if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/xeroxbayzid/Bayzid /Bayzid
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Bayzid
fi
cd /Bayzid
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
