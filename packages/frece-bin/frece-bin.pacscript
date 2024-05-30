pkgname="frece-bin"
gives="frece"
pkgdesc="Maintain a database sorted by frecency (frequency + recency)"
pkgver="1.0.6"
source="https://github.com/YodaEmbedding/frece/releases/download/v${pkgver}/x86_64-unknown-linux-gnu.tar.gz"
sha256sum="64f2b12abc2c64fc03b4d63e661a4a37014f123ff96033af0e529a71849b49c2"

package() {
   cd "${_archive}"
        install -Dm755 frece "${pkgdir}/usr/local/bin/${pkgname}"
}
