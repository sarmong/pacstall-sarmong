name="jqp-bin"
pkgname="jqp"
pkgdesc="A TUI playground to experiment with jq"
pkgver="0.5.0"
url="https://github.com/noahgorstein/jqp/releases/download/v${pkgver}/jqp_Linux_x86_64.tar.gz"

package() {
        sudo install -Dm755 ${pkgname} "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}
