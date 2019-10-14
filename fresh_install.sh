/bin/bash

sudo apt-get install libxml2 libxml2-dev bison flex libcdk5-dev cmake git
sudo apt-get install libaio-dev libusb-1.0-0-dev libserialport-dev libxml2-dev libavahi-client-dev doxygen graphviz
git clone https://github.com/analogdevicesinc/libiio.git
echo INSTALLING LIBIIO
cd libiio
cmake ./
make all
sudo make install

echo INSTALLING udev rules
cd /etc/udev/rules.d/
sudo wget https://raw.githubusercontent.com/analogdevicesinc/plutosdr-fw/master/scripts/53-adi-plutosdr-usb.rules
sudo wget https://raw.githubusercontent.com/analogdevicesinc/m2k-fw/master/scripts/53-adi-m2k-usb.rules
sudo udevadm control --reload-rules

sudo apt-get install python3-dev python-pip python3-pip
