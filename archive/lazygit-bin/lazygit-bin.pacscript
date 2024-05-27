name="lazygit-bin"
pkgname="lazygit"
pkgdesc="Simple terminal UI for git commands"
pkgver="0.40.2"
source="https://github.com/jesseduffield/lazygit/releases/download/v${pkgver}/lazygit_${pkgver}_Linux_x86_64.tar.gz"
sha256sum="ff05cb8ebd0785ce220975e5cd394bc200424d9a58727fa81e0bbb3828db7ff1"

package() {
 sudo install -Dm755 lazygit "${STAGEDIR}/${name}/usr/local/bin/${pkgname}"
}

