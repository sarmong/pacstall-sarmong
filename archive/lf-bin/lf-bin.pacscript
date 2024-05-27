name="lf-bin"
pkgname="lf"
pkgdesc="Terminal file manager"
pkgver="31"
source="https://github.com/gokcehan/lf/releases/download/r${pkgver}/lf-linux-amd64.tar.gz"
sha256sum="db529fbc0c9ba66d426d7acde95a3520ff67c02162b115415ec2c288b2867f02"

package() {
        sudo install -Dm755 lf "${STAGEDIR}/${gives}/usr/local/bin/${pkgname}"
}
