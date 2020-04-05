wget -N --no-check-certificate https://github.com/heham/k3/raw/master/brcmfmac4366c-pcie.bin.69027
mv /lib/firmware/brcm/brcmfmac4366c-pcie.bin /lib/firmware/brcm/brcmfmac4366c-pcie.bin0
cp ./brcmfmac4366c-pcie.bin.69027 /lib/firmware/brcm/brcmfmac4366c-pcie.bin
chmod 755 /lib/firmware/brcm/brcmfmac4366c-pcie.bin
rm /lib/firmware/brcm/brcmfmac4366c-pcie.bin0
rm ./brcmfmac4366c-pcie.bin.69027

wget -N --no-check-certificate https://github.com/heham/k3/raw/master/k3screenctrl.tar
tar xvf ./k3screenctrl.tar
cp cp -r ./k3screenctrl/ /lib/k3screenctrl/
cp ./k3screenctrl/k3screenctrl /usr/bin/
chmod 755 /usr/bin/k3screenctrl
chmod 755 /lib/k3screenctrl/*.*
rm /lib/k3screenctrl/k3screenctrl
rm -rf ./k3screenctrl/

reboot
