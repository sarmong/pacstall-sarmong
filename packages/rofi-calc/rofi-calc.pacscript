name="rofi-calc"
pkgdesc="Do live calculations in rofi!"
pkgver="2.2.0"
url="https://github.com/svenstaro/rofi-calc/archive/refs/tags/v${pkgver}.zip"
depends="qalc libtool"
hash="5f3ba0699ea8cf0f700b89b0ff95ae89540471540249d03f9b1057d92c69a9e2"

prepare() {
        autoreconf -i
        mkdir build
        cd build
        ../configure
}

build() {
        make -j$(nproc)
}

package() {
        sudo make DESTDIR="${STOWDIR}/${name}" install
}
