# QGroundControl Ground Control Station
For Build nVidia Jetpack 5.1.2 (using AGX Orin device) - Ubuntu20.04, Arm64

source build (https://docs.qgroundcontrol.com/master/en/qgc-dev-guide/getting_started/index.html)

#build
cmake -B build -G Ninja CMAKE_BUILD_TYPE=Release
cmake --build build --config Release
#run
./build/QGroundControl

(while build and run, install qt libraries.)
#build
 - such as libqt5-***-dev or qt***-dev
#run
 - such as qml-module-*


#make appimage
./deploy/create_linux_appimage_arm.sh $PWD $PWD/build/

#run
sudo apt install libqt5quickcontrols2-5 libqt5charts5 libqt5serialport5 libqt5texttospeech5 libqt5location5 libqt5multimedia5 libqt5x11extras5 libqt5sql5-sqlite
sudo apt install qml-module-qtquick-controls qml-module-qtquick-layouts qml-module-qtquick-controls2 qml-module-gsettings1.0 qml-module-qtquick-dialogs qml-module-qtqml-models2 qml-module-qt-labs-settings qml-module-qtlocation qml-module-qt-labs-folderlistmodel qml-module-qtpositioning qml-module-qtcharts 
chmod +x QGroundControl.AppImage
./QGroundControl.AppImage
