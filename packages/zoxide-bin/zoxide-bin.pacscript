name="zoxide-bin"
pkgname="zoxide"
pkgdesc="A fast cd command that learns your habits"
pkgver="0.8.0"
url="https://github.com/ajeetdsouza/zoxide/releases/download/v${pkgver}/zoxide-v${pkgver}-x86_64-unknown-linux-musl.tar.gz"
hash="cbf4044be68c901f0fb29b7511fd8c645f466afba0e98a6ca6d9d21ab932f41b"

prepare() {
        true
}

build() {
        true
}

package() {
        sudo install -Dm755 zoxide "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
        sudo install -Dm644 LICENSE -t "${STOWDIR}/${name}/usr/local/share/licenses/$pkgname/"
        sudo install -Dm644 man/*.1 -t "${STOWDIR}/${name}/usr/local/share/man/man1/"
        sudo install -Dm644 completions/zoxide.bash "${STOWDIR}/${name}/usr/local/share/bash-completion/completions/zoxide"
        sudo install -Dm644 completions/_zoxide -t "${STOWDIR}/${name}/usr/local/share/zsh/site-completions/"
        sudo install -Dm644 completions/zoxide.fish -t "${STOWDIR}/${name}/usr/local/share/fish/vendor_completions.d/"
}
