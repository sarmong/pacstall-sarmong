name="clipnotify-git"
pkgname="clipnotify"
pkgdesc="Notify on new X clipboard events"
pkgver="1.0"
url="https://github.com/cdown/clipnotify.git"
makedepends=("libxtst-dev")
depends=("libxtst-dev")

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

build() {
        make -j$(nproc)
}

package() {
        sudo make DESTDIR="${STOWDIR}/${name}" install
}
