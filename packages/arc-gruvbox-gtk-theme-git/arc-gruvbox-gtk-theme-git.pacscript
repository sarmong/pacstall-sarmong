pkgname="arc-gruvbox-gtk-theme-git"
gives="arc-gruvbox-gtk-theme"
pkgdesc="A flat, grey gruvboxed theme with transparent elements for GTK 3, GTK 2 and gnome-shell. Latest commit from the master branch on Github."
source=("https://github.com/sarmong/arc-gruvbox-theme.git")
makedepends=(libgtk-3-dev)
depends=(libgtk-3-dev)
replaces="${pkgname}"
pkgver="1.0"

build() {
    cd "${_archive}"
    sed -i '/test -z "\$srcdir" && srcdir=\./a\
# notify-send cwd $cwd\
# notify-send srcdir $srcdir' autogen.sh
    ./autogen.sh --prefix=/usr --disable-darker --disable-dark --disable-cinnamon
}

package() {
    cd "${_archive}"
    make DESTDIR="${pkgdir}" install
}
