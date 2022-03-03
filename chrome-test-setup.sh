echo "Updating..."
sudo apt-get update

echo "Installing Chrome for Selenium.."
cd /tmp
wget https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_91.0.4472.164-1_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_91.0.4472.164-1_amd64.deb

echo "Installing chromedriver for Selenium..."
cd /tmp
curl https://chromedriver.storage.googleapis.com/91.0.4472.101/chromedriver_linux64.zip > /tmp/chromedriver.zip
unzip chromedriver.zip
sudo mv chromedriver /usr/bin/chromedriver
chromedriver --version

chromedriver --whitelisted-ips
