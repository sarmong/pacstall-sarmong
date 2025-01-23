pkgname="czkawka-gui-bin"
gives="czkawka-gui"
pkgdesc="Multi functional app to find duplicates, empty folders, similar images etc."
pkgver="6.1.0"
arch=("amd64")
source=(
  "https://github.com/qarmin/czkawka/releases/download/${pkgver}/linux_czkawka_gui"
  "https://raw.githubusercontent.com/sarmong/pacstall-sarmong/master/packages/${pkgname}/${gives}.desktop"
  "https://raw.githubusercontent.com/sarmong/pacstall-sarmong/master/packages/${pkgname}/${gives}.png"
)
replaces="${pkgname}"
sha256sum=(
  "2f4086b7a88690d804018acdc20a52a6f5d949b979616b3e84201b0e3331a34e"
  "e2ca947e025f3cf4c982efb8073298eac26c08ff35ea412e64ec1a24002cef2f"
)

package() {
  install -Dm755 linux_czkawka_gui "${pkgdir}/usr/local/bin/${gives}"

  install -Dm644 "${gives}.desktop" -t "${pkgdir}/usr/share/applications"

  install -Dm644 "${gives}.png" -t "${pkgdir}/usr/share/pixmaps"
}
