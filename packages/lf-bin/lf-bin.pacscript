name="lf-bin"
pkgname="lf"
pkgdesc="Terminal file manager"
pkgver="r31"
url="https://github.com/gokcehan/lf/releases/download/${pkgver}/lf-linux-amd64.tar.gz"
hash="db529fbc0c9ba66d426d7acde95a3520ff67c02162b115415ec2c288b2867f02"

package() {
        sudo install -Dm755 lf "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}
