# install the GNU screen utility which is used by the minecraft systemd service
sudo apt-get install screen
# add a non-root users named minecraft to run the server
sudo useradd -m -r -d /opt/minecraft minecraft
# create directory to store the minecraft server
sudo mkdir /opt/minecraft/survival
# assign the owner of the server directory to the new minecraft user
sudo chown -R minecraft /opt/minecraft/survival/
# copy the minecraft service file which configures the systemd server to the systemd directory
sudo cp ./minecraft@.service /etc/systemd/system/
# start the minecraft survival server
sudo systemctl start minecraft@survival