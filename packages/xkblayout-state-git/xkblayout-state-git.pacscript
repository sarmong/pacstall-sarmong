name="xkblayout-state-git"
pkgname="xkblayout-state"
pkgdesc="A small command-line program to get/set the current keyboard layout."
pkgver="1.0"
url="https://github.com/nonpop/xkblayout-state.git"
depends="libx11-dev"

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

build() {
        make -j$(nproc)
}

package() {
        sudo make DESTDIR="${STOWDIR}/${name}" PREFIX="/usr/local" install
}
