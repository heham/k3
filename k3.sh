cd /tmp
opkg install libustream-openssl20150806
wget --no-check-certificate https://github.com/heham/k3/raw/master/brcmfmac4366c-pcie.bin.69027
wget --no-check-certificate https://github.com/heham/k3/raw/master/k3screenctrl.tar

mv /lib/firmware/brcm/brcmfmac4366c-pcie.bin /lib/firmware/brcm/brcmfmac4366c-pcie.bin0
cp ./brcmfmac4366c-pcie.bin.69027 /lib/firmware/brcm/brcmfmac4366c-pcie.bin
chmod 755 /lib/firmware/brcm/brcmfmac4366c-pcie.bin

mkdir k3screenctrl
tar xvf ./k3screenctrl.tar -C k3screenctrl
cp -r ./k3screenctrl/lib/k3screenctrl/ /lib/k3screenctrl/
cp ./k3screenctrl/bin/k3screenctrl /usr/bin/
cp ./k3screenctrl/init.d/k3screenctrl /etc/init.d/
chmod 755 /usr/bin/k3screenctrl
chmod 755 /lib/k3screenctrl/*.*
chmod 755 /etc/init.d/k3screenctrl
ln -s /etc/init.d/k3screenctrl /etc/rc.d/S40k3screenctrl

rm /lib/firmware/brcm/brcmfmac4366c-pcie.bin0
rm ./brcmfmac4366c-pcie.bin.69027
rm ./k3screenctrl.tar
rm -rf ./k3screenctrl/

reboot
