pkgname="xkblayout-state-git"
gives="xkblayout-state"
pkgdesc="A small command-line program to get/set the current keyboard layout."
pkgver="1.0"
source="https://github.com/nonpop/xkblayout-state.git"
depends="libx11-dev"
replaces="${pkgname}"

pkgver() {
       cd "${_archive}"
        git ls-remote origin master | cut -f1
}

build() {
       cd "${_archive}"
        make -j$(nproc)
}

package() {
       cd "${_archive}"
        make DESTDIR="${pkgdir}" PREFIX="/usr/local" install
}
