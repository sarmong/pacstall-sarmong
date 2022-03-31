name="lazygit-bin"
pkgname="lazygit"
description="simple terminal UI for git commands"
version="0.34"
url="https://github.com/jesseduffield/lazygit/releases/download/v${version}/lazygit_${version}_Linux_x86_64.tar.gz"
hash="4216b48d02884173f0f784235a5fee52c4ab344713b0b873e27321b3df421879"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo install -Dm755 lazygit "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

