name="tokei-bin"
pkgname="tokei"
pkgdesc="Count your code, quickly."
pkgver="13.0.0"
url="https://github.com/XAMPPRocky/tokei/releases/download/v${pkgver}-alpha.0/tokei-x86_64-unknown-linux-gnu.tar.gz"
hash="5c039120797e3e00168f245f9ea857001c647315ecaa9bd810dcb6d0b80409d4"

package() {
        sudo install -Dm755 tokei "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

