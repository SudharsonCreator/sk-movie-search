if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SudharsonCreator/SK-Movie-Search-Bot.git /SKMovieSearchBot
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SKMovieSearchBot
fi
cd /SKMovieSearchBot
pip3 install -U -r requirements.txt
echo "Starting SK-Movie-Search-Bot...."
python3 bot.py
