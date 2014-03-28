apt-get install -q -y software-properties-common
add-apt-repository ppa:chris-lea/node.js
apt-get update -q -y
apt-get install -q -y python-software-properties python g++ make nodejs

echo Installing init scripts
mv /tmp/jumpin /etc/init.d/jumpin
mv /tmp/jumpin.conf /etc/init/jumpin.conf
chmod 755 /etc/init.d/jumpin

echo Unpacking Jumpin.tar.gz
mkdir -p /opt/jumpin
tar -xvf /tmp/jumpin.tar.gz -C /opt/jumpin
cd /opt/jumpin
npm install

echo Starting Jumpin
service jumpin status || true