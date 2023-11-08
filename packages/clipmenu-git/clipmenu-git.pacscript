name="clipmenu-git"
pkgname="clipmenu"
pkgdesc="Clipboard management using dmenu"
url="https://github.com/cdown/clipmenu.git"
pacdeps=("clipnotify")
depends=("xsel")

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

install() {
        sudo make PREFIX="${STOWDIR}/${name}/usr/local" install
}
