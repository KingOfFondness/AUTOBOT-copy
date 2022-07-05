if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/KingOfFondness/AUTOBOT-copy.git /AUTOBOT-copy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AUTOBOT-copy
fi
cd /AUTOBOT-copy
pip3 install -U -r requirements.txt
echo "AUTOBOT-copy...."
python3 main.py
