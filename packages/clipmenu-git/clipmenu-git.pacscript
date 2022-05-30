name="clipmenu-git"
description="Clipboard management using dmenu"
pkgname="clipmenu"
url="https://github.com/cdown/clipmenu.git"
pacdeps=("clipnotify")
depends=("xsel")

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

prepare() {
        true
}

build() {
        true
}

install() {
        sudo make PREFIX="${STOWDIR}/${name}/usr/local" install
}
