name="nerd-fonts-fira-code"
pkgdesc="Patched font Fira Code from nerd-fonts library"
pkgver="3.0.2"
url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${pkgver}/FiraCode.tar.xz"
#repology=("project: fonts:nerd-fonts")
hash="76c1d691cea44b0cae4d6add56bb3ef52b83cedebb1c5f519b62d068f8586b93"

package() {
  sudo install -d "${pkgdir}"/usr/share/fonts/TTF
  sudo rm "${SRCDIR:?}/"*"Windows Compatible.ttf"
  sudo install -Dm644 "${SRCDIR}/"*.ttf "${pkgdir}"/usr/share/fonts/TTF
}
