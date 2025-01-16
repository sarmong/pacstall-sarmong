pkgname="dragon-drop"
pkgdesc="Drag and drop source/target for X"
pkgver="1.2.0"
source="https://github.com/mwh/dragon/archive/refs/tags/v${pkgver}.zip"
makedepends="libgtk-3-dev"
depends="libgtk-3-dev"
replaces="${pkgname}"
sha256sum="5a89518b554034696923b624b9430c0dc160589e015179ec531d650c6c339133"

build() {
   cd "${_archive}"
        make -j$(nproc) NAME=${pkgname}
}

package() {
   cd "${_archive}"
        make DESTDIR="${pkgdir}" PREFIX='/usr' NAME="${pkgname}" install
}
