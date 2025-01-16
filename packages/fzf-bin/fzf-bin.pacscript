pkgname="fzf-bin"
gives="fzf"
pkgdesc="A command-line fuzzy finder"
pkgver="0.50.0"
source="https://github.com/junegunn/fzf/releases/download/${pkgver}/fzf-${pkgver}-linux_amd64.tar.gz"
replaces="${pkgname}"

package() {
   cd "${_archive}"
   install -Dm755 "${gives}" -t "${pkgdir}/usr/local/bin"
}

