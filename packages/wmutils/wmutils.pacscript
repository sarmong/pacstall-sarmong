pkgname="wmutils"
pkgdesc="Set of window manipulation tools"
pkgver="1.7"
source="https://github.com/wmutils/core/archive/refs/tags/v${pkgver}.zip"
arch=("amd64")
makedepends=(libxcb1-dev libxcb-util-dev libxcb-cursor-dev)
depends=(libxcb1-dev libxcb-util-dev libxcb-cursor-dev)
replaces="${pkgname}"
sha256sum="b9b70fa38b0b021f7106a7552d877f21ce7a03100564508ef5748e154bfe61b6"

build() {
   cd "core-${pkgver}"
        make -j$(nproc)
}

package() {
   cd "core-${pkgver}"
        make DESTDIR="${pkgdir}" PREFIX="/usr/local" MANPREFIX="/usr/local/share/man" install
}
