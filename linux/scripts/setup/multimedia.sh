

# pulseaudio
# stream to chromecast
sudo add-apt-repository ppa:qos/pulseaudio-dlna
sudo apt-get update
sudo apt-get install pulseaudio-dlna
sudo apt-get install pavucontrol        # sound level control for each application
# equalizer
#sudo add-apt-repository ppa:alex-wv/pulseaudio-equalizer-ppa
#sudo apt -get update
#sudo apt-get install pulseaudio-equalizer





# Spotify
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
sudo apt-get update
# 4. Install Spotify
sudo apt-get install spotify-client
