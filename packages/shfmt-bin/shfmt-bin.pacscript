name="shfmt-bin"
pkgname="shfmt"
description="Shell formatter"
version="3.4.3"
url="https://github.com/mvdan/sh/releases/download/v${version}/shfmt_v${version}_linux_amd64"

prepare() {
        true
}

build() {
        true
}

install() {
        mv shfmt_v${version}_linux_amd64 shfmt
        chmod +x shfmt
        sudo install -Dm755 shfmt "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}
  
