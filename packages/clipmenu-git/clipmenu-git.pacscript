pkgname="clipmenu-git"
gives="clipmenu"
pkgdesc="Clipboard management using dmenu"
source="https://github.com/cdown/clipmenu.git"
pacdeps=("clipnotify-git")
pkgver="1.0"
makedepends=("xsel")
depends=("xsel")

pkgver() {
   cd "${_archive}"
   git ls-remote origin master | cut -f1
}

package() {
   cd "${_archive}"
   make PREFIX="${STAGEDIR}/${gives}/usr/local" install
}
