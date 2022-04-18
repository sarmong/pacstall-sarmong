name="dragon-drop"
description="Drag and drop source/target for X"
version="1.2.0"
url="https://github.com/mwh/dragon/archive/refs/tags/v${version}.zip"
depends="libgtk-3-dev"
hash="5a89518b554034696923b624b9430c0dc160589e015179ec531d650c6c339133"

prepare() {
        true
}

build() {
        make -j$(nproc) NAME=${pkgname}
}

install() {
        sudo make DESTDIR="${STOWDIR}/$name" PREFIX='/usr' NAME="${name}" install
}
