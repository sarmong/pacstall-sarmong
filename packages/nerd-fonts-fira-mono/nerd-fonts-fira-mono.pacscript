pkgname="nerd-fonts-fira-mono"
pkgdesc="Patched font Fira Mono from nerd-fonts library"
pkgver="3.0.2"
source="https://github.com/ryanoasis/nerd-fonts/releases/download/v${pkgver}/FiraMono.tar.xz"
replaces="${pkgname}"
arch=("amd64")
#repology=("project: fonts:nerd-fonts")
sha256sum="8bd1aca6c2abf629d25e1ccf34a92d2ae8d48b2ff21ace473ac7ac0c2d2b3fc6"

package() {
   # rm ./*Windows\ Compatible.otf
   install -d "${pkgdir}"/usr/share/fonts/OTF
   install -Dm644 ./*.otf "${pkgdir}"/usr/share/fonts/OTF
}
