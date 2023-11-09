name="fzf-bin"
pkgname="fzf"
pkgdesc="A command-line fuzzy finder"
pkgver="0.29.0"
url="https://github.com/junegunn/fzf/releases/download/${pkgver}/fzf-${pkgver}-linux_amd64.tar.gz"
hash="0106f458b933be65edb0e8f0edb9a16291a79167836fd26a77ff5496269b5e9a"

prepare() {
        true
}

build() {
        true
}

package() {
        sudo install -Dm755 fzf "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

