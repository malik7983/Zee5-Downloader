if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/malik7983/Zee5-Downloader.git /Zee5-Downloader
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Zee5-Downloader
fi
cd /Zee5-Downloader
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
