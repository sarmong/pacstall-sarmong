name="czkawka-gui-bin"
pkgname="czkawka-gui"
pkgdesc="Multi functional app to find duplicates, empty folders, similar images etc."
pkgver="6.1.0"
url="https://github.com/qarmin/czkawka/releases/download/${pkgver}/linux_czkawka_gui"
hash="2f4086b7a88690d804018acdc20a52a6f5d949b979616b3e84201b0e3331a34e"
desktop_file_hash="e2ca947e025f3cf4c982efb8073298eac26c08ff35ea412e64ec1a24002cef2f"

prepare() {
      wget -q "https://raw.githubusercontent.com/sarmong/pacstall-sarmong/master/packages/${name}/${pkgname}.desktop"
  if [[ "$(sha256sum ${pkgname}.desktop | cut -d' ' -f 1)" != "${desktop_file_hash}" ]]; then
    fancy_message error "Checksum for pycharm.desktop failed"
    return 1
  fi
}

package() {
        sudo install -Dm755 linux_czkawka_gui "${STOWDIR}/${name}/usr/local/bin/${pkgname}"

        sudo install -Dm644 "${pkgname}.desktop" "${pkgdir}/usr/share/applications/"
}

post_remove() {
        sudo rm "${pkgdir}/usr/share/applications/${pkgname}.desktop"
}

