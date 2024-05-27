pkgname="simp1e-gruvbox-dark-cursor-theme-git"
gives="simp1e-gruvbox-dark-cursor-theme"
pkgdesc="An aesthetic cursor theme for Linux desktops."
source="https://gitlab.com/cursors/simp1e.git"
pkgver="1.0"
makedepends=("librsvg2-bin" "python3-pil" "x11-apps")

pkgver() {
  git ls-remote origin master | cut -f1
}

build() {
        cd "${_archive}"
  ./build.sh --include=Simp1e-Gruvbox-Dark.txt
}

package() {
        cd "${_archive}"
  install -d "${pkgdir}/usr/share/icons/Simp1e-Gruvbox-Dark"
  cp -a built_themes/Simp1e-Gruvbox-Dark/* "${pkgdir}/usr/share/icons/Simp1e-Gruvbox-Dark"
}
