pkgname="fnm-bin"
gives="fnm"
pkgdesc="Fast and simple Node.js version manager, built in Rust"
pkgver="1.35.1"
arch=("amd64")
source="https://github.com/Schniz/fnm/releases/download/v${pkgver}/fnm-linux.zip"
replaces="${pkgname}"
sha256sum="cf2d34df1f1ed89742d75eba2920af376a756d1eee5eb319821d6dd1366ed9e1"

package() {
   cd "${gives}-${pkgver}"
   install -Dm755 "${gives}" -t "${pkgdir}/usr/local/bin"
}
