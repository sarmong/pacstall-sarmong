name="tig"
pkgdesc="Text-mode interface for git"
pkgver="2.5.5"
url="https://github.com/jonas/tig/archive/refs/tags/tig-${pkgver}.zip"
depends="libncurses-dev"
hash="eef4e24147a35ec0d79ba4599dda2621f607b01d961a1005d75334dc4b9794fd"

build() {
        make -j$(nproc) prefix=/usr/local
}

package() {
        sudo make DESTDIR="${STOWDIR}/${name}" prefix=/usr/local install
        sudo make DESTDIR="${STOWDIR}/${name}" prefix=/usr/local install doc
}
