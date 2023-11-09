name="wmutils"
pkgdesc="Set of window manipulation tools"
pkgver="1.7"
url="https://github.com/wmutils/core/archive/refs/tags/v${pkgver}.zip"
depends="libxcb1-dev"
hash="b9b70fa38b0b021f7106a7552d877f21ce7a03100564508ef5748e154bfe61b6"

build() {
        make -j$(nproc)
}

package() {
        sudo make DESTDIR="${STOWDIR}/${name}" PREFIX="/usr/local" MANPREFIX="/usr/local/share/man" install
}
