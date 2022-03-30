name="gendesk-bin"
pkgname="gendesk"
description="Generate .desktop files and download .png icons by specifying a minimum of information"
version="1.0.9"
url="https://github.com/xyproto/gendesk/releases/download/${version}/gendesk-${version}-linux_static.tar.xz"
hash="c6937113fc6fffba0b96521c517dcff092a8919f3e4d0e3b0ca68f312724c703"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo install -Dm755 gendesk "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

