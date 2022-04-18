name="lf-bin"
pkgname="lf"
description="Terminal file manager"
version="r27"
url="https://github.com/gokcehan/lf/releases/download/${version}/lf-linux-amd64.tar.gz"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo install -Dm755 lf "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}
