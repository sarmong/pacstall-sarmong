pkgname="clipmenu-git"
gives="clipmenu"
pkgdesc="Clipboard management using dmenu"
source="https://github.com/cdown/clipmenu.git"
arch=("amd64")
pacdeps=("clipnotify-git")
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
   make PREFIX="${pkgdir}/usr/local" install
}
