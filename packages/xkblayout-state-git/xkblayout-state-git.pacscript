name="xkblayout-state-git"
pkgname="xkblayout-state"
description="A small command-line program to get/set the current keyboard layout."
url="https://github.com/nonpop/xkblayout-state.git"
depends="libx11-dev"

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
        sudo make DESTDIR="${STOWDIR}/${name}" PREFIX="/usr/local" install
}
