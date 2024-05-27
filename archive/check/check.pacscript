name="check"
pkgdesc="A unit testing framework for C"
pkgver="0.15.2"
source="https://github.com/libcheck/check/releases/download/${pkgver}/check-${pkgver}.tar.gz"
build_depends="gcc make autoconf automake libtool pkg-config texinfo flex bison check"
sha256sum="a8de4e0bacfb4d76dd1c618ded263523b53b85d92a146d8835eb1a52932fa20a"

prepare() {
        autoreconf --install
        ./configure
}

build() {
        make -j$(nproc)
        make check
}

package() {
        sudo make DESTDIR="${STAGEDIR}/${name}" install
}

postinst() {
        sudo ldconfig
}
