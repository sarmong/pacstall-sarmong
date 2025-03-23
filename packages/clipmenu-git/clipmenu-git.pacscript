pkgname="clipmenu-git"
gives="clipmenu"
pkgdesc="Clipboard management using dmenu"
source="https://github.com/cdown/clipmenu.git"
arch=("amd64")
pkgver="1.0"
makedepends=("xsel")
depends=("xsel")
replaces="${pkgname}"

pkgver() {
    cd "${gives}"
   git ls-remote origin master | cut -f1
}

package() {
    cd "${gives}"
   make DESTDIR="${pkgdir}" PREFIX="/usr/local" install
}
