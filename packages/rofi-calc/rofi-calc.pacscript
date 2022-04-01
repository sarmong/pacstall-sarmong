name="rofi-calc"
description="Do live calculations in rofi!"
version="2.1.0"
url="https://github.com/svenstaro/rofi-calc/archive/refs/tags/v${version}.zip"
depends="qalc libtool"

prepare() {
        autoreconf -i
        mkdir build
        cd build
        ../configure
}

build() {
        make -j$(nproc)
}

install() {
        sudo make DESTDIR="${STOWDIR}/${name}" install
}
