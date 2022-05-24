if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JNS-BOTS-V2/JNS_FC_BOT.git /JNS_FC_BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /JNS_FC_BOT
fi
cd /vellachilaano
pip3 install -U -r requirements.txt
echo "Starting JNS BOTS...."
python3 bot.py
