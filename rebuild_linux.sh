rm -rf bin
rm -rf build

set -e
mkdir build && cd build

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export OS=$(lsb_release -si)
	if [[ "$OS" == "CentOS" ]]; then
		cmake -DCMAKE_BUILD_TYPE=Release -D__LINUX__=1 -D__CENTOS__=1 ..
	else
		cmake -DCMAKE_BUILD_TYPE=Release -D__LINUX__=1 ..
	fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    cmake -DCMAKE_BUILD_TYPE=Release -D__DARWIN__=1  ..
fi

make -j8
cd ..
