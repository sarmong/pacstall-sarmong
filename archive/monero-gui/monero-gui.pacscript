name="monero-gui"
pkgname="monero-gui"
pkgdesc="Monero: the secure, private, untraceable cryptocurrency"
pkgver="0.18.3.1"
source="https://downloads.getmonero.org/gui/monero-gui-linux-x64-v${pkgver}.tar.bz2"
sha256sum="06f6e600db51205116d52522964cf9b96337d7b5cb1e101730ccb0039b30e15b"
desktop_file_hash="e2cc679b67bef5f27708b4155a0a829fe1ae1bb7044f855c68936d77a14ecd0c"

prepare() {
  wget -q "https://raw.githubusercontent.com/sarmong/pacstall-sarmong/master/packages/${name}/${pkgname}.desktop"
  wget -q "https://raw.githubusercontent.com/sarmong/pacstall-sarmong/master/packages/${name}/monero.svg"
  if [[ "$(sha256sum ${pkgname}.desktop | cut -d' ' -f 1)" != "${desktop_file_hash}" ]]; then
    fancy_message error "Checksum for ${pkgname}.desktop failed"
    return 1
  fi
}

package() {
  sudo install -Dm755 monero-gui "${pkgdir}/usr/local/bin/${pkgname}"

  sudo install -Dm644 "${pkgname}.desktop" -t "${pkgdir}/usr/share/applications"

  sudo install -Dm644 "monero.svg" -t "${pkgdir}/usr/share/pixmaps"
}
