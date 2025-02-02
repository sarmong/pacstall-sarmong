pkgname="fzf-bin"
gives="fzf"
pkgdesc="A command-line fuzzy finder"
pkgver="0.50.0"
arch=("amd64")
source="https://github.com/junegunn/fzf/releases/download/${pkgver}/fzf-${pkgver}-linux_amd64.tar.gz"
replaces="${pkgname}"
sha256sum="8fcefbcb085706de98f5fd23955ff343bd75eed826ec0a9c793bacba15ca9932"


package() {
   cd "${gives}-${pkgver}"
   install -Dm755 "${gives}" -t "${pkgdir}/usr/local/bin"
}

