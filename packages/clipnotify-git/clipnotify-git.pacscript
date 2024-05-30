pkgname="clipnotify-git"
gives="clipnotify"
pkgdesc="Notify on new X clipboard events"
pkgver="1.0"
source="https://github.com/cdown/clipnotify.git"
makedepends=("libxtst-dev")
depends=("libxtst-dev")

pkgver() {
   git ls-remote origin master | cut -f1
}

build() {
   cd "${_archive}"
   make -j$(nproc)
}

package() {
   cd "${_archive}"
   make DESTDIR="${pkgdir}" install
}
