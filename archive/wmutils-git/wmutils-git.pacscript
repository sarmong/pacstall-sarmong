name="wmutils-git"
pkgname="wmutils"
pkgdesc="Set of window manipulation tools"
pkgver="0.15.2"
source="https://github.com/wmutils/core.git"
depends="libxcb1-dev"

pkgver() {
        git ls-remote "${source}" master | cut -f1
}

prepare() {
        true
}

build() {
        make -j$(nproc)
}

package() {
        sudo make DESTDIR="${STAGEDIR}/${name}" PREFIX="/usr/local" MANPREFIX="/usr/local/share/man" install
}
