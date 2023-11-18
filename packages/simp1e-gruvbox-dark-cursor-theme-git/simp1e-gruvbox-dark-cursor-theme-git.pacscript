name="simp1e-gruvbox-dark-cursor-theme-git"
pkgname="simp1e-gruvbox-dark-cursor-theme"
pkgdesc="An aesthetic cursor theme for Linux desktops."
url="https://gitlab.com/cursors/simp1e.git"
pkgver="1.0"
makedepends=("librsvg2-dev" "python3-pil" "x11-apps")

pkgver() {
  git ls-remote "${url}" master | cut -f1
}

build() {
  ./build.sh --include=Simp1e-Gruvbox-Dark.txt
}

package() {
  sudo install -Dm644 built_themes/Simp1e-Gruvbox-Dark "${pkgdir}/usr/share/icons/Simp1e-Gruvbox-Dark"
}
