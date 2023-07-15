# Clone Upstream
#git clone https://github.com/kmicki/SteamDeckGyroDSU ./sdgyrodsu
cp -rvf ./debian ./sdgyrodsu
cd ./sdgyrodsu
#for i in ../patches/*.patch; do patch -Np1 -i $i ;done

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
