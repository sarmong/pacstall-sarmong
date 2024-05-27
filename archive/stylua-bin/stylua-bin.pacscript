name="stylua-bin"
pkgname="stylua"
pkgdesc="An opinionated Lua code formatter"
pkgver="0.13.1"
source="https://github.com/JohnnyMorganz/StyLua/releases/download/v${pkgver}/stylua-linux.zip"
sha256sum="499f98f0fb2c5fc5ad5c4b064086ba4a75e6ad64ffb6348d284add7185012472"

prepare() {
        true
}

build() {
        true
}

package() {
        sudo install -Dm755 stylua "${STAGEDIR}/${name}/usr/local/bin/${pkgname}"
}
  
