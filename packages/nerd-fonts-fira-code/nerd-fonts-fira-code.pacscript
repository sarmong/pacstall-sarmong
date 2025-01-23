pkgname="nerd-fonts-fira-code"
pkgdesc="Patched font Fira Code from nerd-fonts library"
pkgver="3.0.2"
source="https://github.com/ryanoasis/nerd-fonts/releases/download/v${pkgver}/FiraCode.zip"
replaces="${pkgname}"
arch=("amd64")
#repology=("project: fonts:nerd-fonts")
sha256sum="76c1d691cea44b0cae4d6add56bb3ef52b83cedebb1c5f519b62d068f8586b93"

package() {
  ls -la
   cd "${pkgname}-${pkgver}"
   # rm ./*Windows\ Compatible.ttf
   install -d "${pkgdir}"/usr/share/fonts/TTF
   install -Dm644 ./*.ttf "${pkgdir}"/usr/share/fonts/TTF
}
