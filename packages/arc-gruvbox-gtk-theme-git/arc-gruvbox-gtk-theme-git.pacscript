name="arc-gruvbox-gtk-theme-git"
pkgname="arc-gruvbox-gtk-theme"
pkgdesc="A flat, grey gruvboxed theme with transparent elements for GTK 3, GTK 2 and gnome-shell. Latest commit from the master branch on Github."
url="https://github.com/sarmong/arc-gruvbox-theme.git"
makedepends=(libgtk-3-dev)
depends=(libgtk-3-dev)
pkgver="1.0"

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

build() {
    ./autogen.sh --prefix=/usr --disable-darker --disable-dark --disable-cinnamon
}

package() {
    sudo make DESTDIR="${STOWDIR}/${name}" install
}
