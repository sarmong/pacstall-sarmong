name="lazynpm-bin"
pkgname="lazynpm"
pkgdesc="terminal UI for npm"
pkgver="0.1.4"
source="https://github.com/jesseduffield/lazynpm/releases/download/v${pkgver}/lazynpm_${pkgver}_Linux_x86_64.tar.gz"
sha256sum="3d9322766fa9fbcfdd58279fcde769df848ab51accf78d650a2894f8fc227633"

prepare() {
        true
}

build() {
        true
}

package() {
        sudo install -Dm755 lazynpm "${STAGEDIR}/${name}/usr/local/bin/${pkgname}"
}

