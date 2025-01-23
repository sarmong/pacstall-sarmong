pkgname="arc-gruvbox-gtk-theme-git"
gives="arc-gruvbox-gtk-theme"
arch=("amd64")
pkgdesc="A flat, grey gruvboxed theme with transparent elements for GTK 3, GTK 2 and gnome-shell. Latest commit from the master branch on Github."
source=("https://github.com/sarmong/arc-gruvbox-theme.git")
makedepends=(libgtk-3-dev)
depends=(libgtk-3-dev)
replaces="${pkgname}"
pkgver="1.0"

build() {
    cd "${gives}"
    sed -i '/test -z "\$srcdir" && srcdir=\./a\
    ./autogen.sh --prefix=/usr --disable-darker --disable-dark --disable-cinnamon
}

package() {
    make DESTDIR="${pkgdir}" install
}
