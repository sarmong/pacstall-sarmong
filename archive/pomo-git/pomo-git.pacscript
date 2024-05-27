name="pomo-git"
pkgname="pomo"
pkgdesc="Pomodoro CLI"
source="https://github.com/kevinschoon/pomo.git"
build_depends="golang-go"

pkgver() {
        git ls-remote "${source}" master | cut -f1
}

build() {
        make -j$(nproc)
}

package() {
        sudo install -Dm755 bin/pomo "${STAGEDIR}/${name}/usr/local/bin/${pkgname}"
}
