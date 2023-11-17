name="czkawka-gui-bin"
pkgname="czkawka-gui"
pkgdesc="Multi functional app to find duplicates, empty folders, similar images etc."
pkgver="6.1.0"
url="https://github.com/qarmin/czkawka/releases/download/${pkgver}/linux_czkawka_gui"
hash="2f4086b7a88690d804018acdc20a52a6f5d949b979616b3e84201b0e3331a34e"

package() {
        sudo install -Dm755 linux_czkawka_gui "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

