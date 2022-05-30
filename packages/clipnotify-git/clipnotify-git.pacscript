name="clipnotify-git"
description="Notify on new X clipboard events"
pkgname="clipnotify"
url="https://github.com/cdown/clipnotify.git"

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

prepare() {
        true
}

build() {
        make -j$(nproc)
}

install() {
        sudo make DESTDIR="${STOWDIR}/${name}" install
}
