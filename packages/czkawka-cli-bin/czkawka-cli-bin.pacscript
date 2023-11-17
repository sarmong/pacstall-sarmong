name="czkawka-cli-bin"
pkgname="czkawka-cli"
pkgdesc="Multi functional app to find duplicates, empty folders, similar images etc."
pkgver="6.1.0"
url="https://github.com/qarmin/czkawka/releases/download/${pkgver}/linux_czkawka_cli"
hash="0b29ae52f7072e76f083715e145a78500e738860597496a09ae334cc6ddde567"

package() {
        sudo install -Dm755 linux_czkawka_cli "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

