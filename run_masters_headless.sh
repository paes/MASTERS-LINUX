cd `dirname $0`
if [ ! -f masters/MastersServer.class ]; then
    sh build_masters_wrapper.sh
fi
java -Djava.library.path=./Netlogo-MASTERS-linux/lib -Dorg.nlogo.is3d=true -cp .:Netlogo-MASTERS-linux/NetLogo.jar:/usr/local/share/py4j/py4j0.8.2.1.jar masters.MastersServer
cd - > /dev/null
