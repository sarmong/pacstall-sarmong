name="handlr-bin"
pkgname="handlr"
description="A better xdg-utils"
version="0.6.4"
url="https://github.com/chmln/handlr/releases/download/v${version}/handlr"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo install -Dm755 handlr "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

