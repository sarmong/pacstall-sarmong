name="frece-bin"
pkgname="frece"
pkgdesc="Maintain a database sorted by frecency (frequency + recency)"
pkgver="1.0.6"
url="https://github.com/YodaEmbedding/frece/releases/download/v${pkgver}/x86_64-unknown-linux-gnu.tar.gz"
hash="64f2b12abc2c64fc03b4d63e661a4a37014f123ff96033af0e529a71849b49c2"

package() {
        sudo install -Dm755 frece "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}
