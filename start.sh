if [ "$EUID" -ne 0 ]; then
  echo "Run the script with root"
  exit 1
fi
###START CLONING THE GIT REPOSITORY

echo "------------------------------------------"
echo "       WEB SCRAPING PROJECT               "
echo "                                          "
echo "       By Lokesh Balaji                   "
echo "                                          "
echo "       https://www.lokii.tech             "
echo "       This script is only for Debian     "
echo "------------------------------------------"
echo "Starting the Setup..."
sleep 5s
echo "Do you want to Install? (Y/N)"
read ans
if [ "$ans" == 'Y' ]; then
  echo "Starting the Installation process"
  sleep 5s
  apt update && apt install python3 python3-pip -y
  cd /opt
  git clone https://github.com/lokeshb003/web-scraping.git
  cp ./web-scraping/bin/web /usr/local/bin/
  chmod +x /usr/local/bin/web
  echo "Done. Now simply use 'web' command."
fi
