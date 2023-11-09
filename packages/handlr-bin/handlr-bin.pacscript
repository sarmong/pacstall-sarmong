name="handlr-bin"
pkgname="handlr"
pkgdesc="A better xdg-utils"
pkgver="0.6.4"
url="https://github.com/chmln/handlr/releases/download/v${pkgver}/handlr"
hash="287e119d75d8bbdb3416f2b3a0962f2625cd4eec946c67305af2069da31ffc91"

package() {
        sudo install -Dm755 handlr "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

