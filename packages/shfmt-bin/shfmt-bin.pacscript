name="shfmt-bin"
pkgname="shfmt"
pkgdesc="Shell formatter"
pkgver="3.4.3"
url="https://github.com/mvdan/sh/releases/download/v${pkgver}/shfmt_v${pkgver}_linux_amd64"

prepare() {
        true
}

build() {
        true
}

package() {
        mv shfmt_v${pkgver}_linux_amd64 shfmt
        chmod +x shfmt
        sudo install -Dm755 shfmt "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}
  
