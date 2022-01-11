# this script depends on crontab
# crontab -e

screen -S "lavalink" -dm zsh -c "cd /home/ascencia/lavalink; java -jar Lavalink.jar"

# Run Portfolio
screen -S "portfolio" -dm zsh -c "cd /home/ascencia/Portfolio; npm run prod"

# Don't miss the environnement variable for screen prometheus
#   export MONGODB_URI=mongodb://mongodb_exporter:< KEY >@localhost:27017
# Check file .zshrc and this screen depends on mongodb_exporter.service
#   so don't forget to check if mongodb_exporter service, if it is off
screen -S "prometheus" -dm zsh -c "cd /home/ascencia/metrics/prometheus-2.31.1.linux-amd64; ./prometheus"

# Run Ascencia bot
screen -S "ascencia" -dm zsh -c "cd /home/ascencia/Ascencia; sudo npm run start:xvfb"
