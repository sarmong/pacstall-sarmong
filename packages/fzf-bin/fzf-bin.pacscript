name="fzf-bin"
pkgname="fzf"
description="A command-line fuzzy finder"
version="0.29.0"
url="https://github.com/junegunn/fzf/releases/download/${version}/fzf-${version}-linux_amd64.tar.gz"
hash="0106f458b933be65edb0e8f0edb9a16291a79167836fd26a77ff5496269b5e9a"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo install -Dm755 fzf "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

