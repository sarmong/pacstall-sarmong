pkgname="rofi-calc"
pkgdesc="Do live calculations in rofi!"
pkgver="2.2.0"
source="https://github.com/svenstaro/rofi-calc/archive/refs/tags/v${pkgver}.zip"
# libqalculate-dev libtool for Ubuntu
makedepends=("rofi-dev" "qalc" "libtool" "libtool-bin")
depends=("rofi-dev" "qalc" "libtool" "libtool-bin")
replaces="${pkgname}"
sha256sum="5f3ba0699ea8cf0f700b89b0ff95ae89540471540249d03f9b1057d92c69a9e2"

prepare() {
    cd "${_archive}"
    mkdir m4
    autoreconf -i
}

build() {
    cd "${_archive}"
    mkdir build
    cd build
    ../configure
    make -j$(nproc)
}

package() {
   cd "${_archive}"
   cd build
   make install DESTDIR="${pkgdir}"
}
