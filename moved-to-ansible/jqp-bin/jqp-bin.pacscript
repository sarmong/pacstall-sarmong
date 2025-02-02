pkgname="jqp-bin"
gives="jqp"
pkgdesc="A TUI playground to experiment with jq"
pkgver="0.5.0"
arch=("amd64")
source="https://github.com/noahgorstein/jqp/releases/download/v${pkgver}/jqp_Linux_x86_64.tar.gz"
replaces="${pkgname}"
sha256sum="6892db2a83f4238cb5cf0b69ceb2318cef5aad1a7144ded27e7ff09dbb39a0b3"

package() {
  ls -la
   cd "${gives}-${pkgver}"
        install -Dm755 "${gives}" -t "${pkgdir}/usr/local/bin"
}
