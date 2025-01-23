pkgname="jqp-bin"
gives="jqp"
pkgdesc="A TUI playground to experiment with jq"
pkgver="0.5.0"
arch=("amd64")
source="https://github.com/noahgorstein/jqp/releases/download/v${pkgver}/jqp_Linux_x86_64.tar.gz"
replaces="${pkgname}"

package() {
  ls -la
   cd "${gives}-${pkgver}"
        install -Dm755 "${gives}" -t "${pkgdir}/usr/local/bin"
}
