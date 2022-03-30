name="wmutils-git"
pkgname="wmutils"
description="Set of window manipulation tools"
version="0.15.2"
url="https://github.com/wmutils/core.git"
depends="libxcb1-dev"

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

prepare() {
        true
}

build() {
        make -j$(nproc)
}

install() {
        sudo make DESTDIR="${STOWDIR}/${name}" PREFIX="/usr/local" MANPREFIX="/usr/local/share/man" install
}
