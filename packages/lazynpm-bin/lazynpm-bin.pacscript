name="lazynpm-bin"
pkgname="lazynpm"
description="terminal UI for npm"
version="0.1.4"
url="https://github.com/jesseduffield/lazynpm/releases/download/v${version}/lazynpm_${version}_Linux_x86_64.tar.gz"
hash="3d9322766fa9fbcfdd58279fcde769df848ab51accf78d650a2894f8fc227633"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo install -Dm755 lazynpm "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

