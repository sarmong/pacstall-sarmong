name="clipmenu-git"
pkgname="clipmenu"
pkgdesc="Clipboard management using dmenu"
url="https://github.com/cdown/clipmenu.git"
pacdeps=("clipnotify-git")
pkgver="1.0"
makedepends=("xsel")
depends=("xsel")

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

package() {
        sudo make PREFIX="${STOWDIR}/${name}/usr/local" install
}
