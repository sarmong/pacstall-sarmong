pkgname="xkblayout-state-git"
gives="xkblayout-state"
pkgdesc="A small command-line program to get/set the current keyboard layout."
pkgver="1.0"
arch=("amd64")
source="https://github.com/nonpop/xkblayout-state.git"
depends="libx11-dev"
replaces="${pkgname}"

pkgver() {
        git ls-remote origin master | cut -f1
}

build() {
  ls -la
   cd "${gives}"
        make -j$(nproc)
}

package() {
   cd "${gives}"
        make DESTDIR="${pkgdir}" PREFIX="/usr/local" install
}
