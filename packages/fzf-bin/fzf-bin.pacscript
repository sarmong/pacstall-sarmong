name="fzf-bin"
pkgname="fzf"
pkgdesc="A command-line fuzzy finder"
pkgver="0.50.0"
url="https://github.com/junegunn/fzf/releases/download/${pkgver}/fzf-${pkgver}-linux_amd64.tar.gz"

prepare() {
        true
}

build() {
        true
}

package() {
        sudo install -Dm755 fzf "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

