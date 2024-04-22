name="bob-bin"
pkgname="bob"
pkgdesc="A version manager for neovim"
pkgver="2.9.1"
url="https://github.com/MordechaiHadad/bob/releases/download/v${pkgver}/bob-linux-x86_64.zip"

package() {
        sudo install -Dm755 bob "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

