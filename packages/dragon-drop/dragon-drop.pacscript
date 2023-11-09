name="dragon-drop"
pkgdesc="Drag and drop source/target for X"
pkgver="1.2.0"
url="https://github.com/mwh/dragon/archive/refs/tags/v${pkgver}.zip"
depends="libgtk-3-dev"
hash="5a89518b554034696923b624b9430c0dc160589e015179ec531d650c6c339133"

build() {
        make -j$(nproc) NAME=${pkgname}
}

package() {
        sudo make DESTDIR="${STOWDIR}/$name" PREFIX='/usr' NAME="${name}" install
}
