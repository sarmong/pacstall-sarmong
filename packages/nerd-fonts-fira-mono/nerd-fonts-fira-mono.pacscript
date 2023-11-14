name="nerd-fonts-fira-mono"
pkgdesc="Patched font Fira Mono from nerd-fonts library"
pkgver="3.0.2"
url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${pkgver}/FiraMono.tar.xz"
#repology=("project: fonts:nerd-fonts")
hash="8bd1aca6c2abf629d25e1ccf34a92d2ae8d48b2ff21ace473ac7ac0c2d2b3fc6"

package() {
  sudo install -d "${pkgdir}"/usr/share/fonts/OTF
  sudo rm "${SRCDIR:?}/"*"Windows Compatible.otf"
  sudo install -Dm644 "${SRCDIR}/"*.otf "${pkgdir}"/usr/share/fonts/OTF
}
