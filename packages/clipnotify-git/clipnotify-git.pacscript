pkgname="clipnotify-git"
gives="clipnotify"
pkgdesc="Notify on new X clipboard events"
pkgver="1.0"
arch=("amd64")
source="https://github.com/cdown/clipnotify.git"
makedepends=("libxtst-dev")
depends=("libxtst-dev")
replaces="${pkgname}"

pkgver() {
   git ls-remote origin master | cut -f1
}

build() {
   cd "${gives}"
   make -j$(nproc)
}

package() {
   cd "${gives}"
   make DESTDIR="${pkgdir}" install
}
