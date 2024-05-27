pkgname="jqp-bin"
gives="jqp"
pkgdesc="A TUI playground to experiment with jq"
pkgver="0.5.0"
source="https://github.com/noahgorstein/jqp/releases/download/v${pkgver}/jqp_Linux_x86_64.tar.gz"

package() {
   cd "${_archive}"
        install -Dm755 "${gives}" -t "${pkgdir}/usr/local/bin"
}
