if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rokstar890/Testbotrokstar.git /Testbotrokstar
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Testbotrokstar
fi
cd /Testbotrokstar
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
