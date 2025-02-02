pkgname="handlr-bin"
gives="handlr"
pkgdesc="A better xdg-utils"
pkgver="0.6.4"
arch=("amd64")
source="https://github.com/chmln/handlr/releases/download/v${pkgver}/handlr"
replaces="${pkgname}"
sha256sum="287e119d75d8bbdb3416f2b3a0962f2625cd4eec946c67305af2069da31ffc91"

package() {
   cd "${gives}-${pkgver}"
        install -Dm755 "${gives}" -t "${pkgdir}/usr/local/bin"
}

