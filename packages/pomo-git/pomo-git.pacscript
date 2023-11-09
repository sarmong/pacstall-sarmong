name="pomo-git"
pkgname="pomo"
pkgdesc="Pomodoro CLI"
url="https://github.com/kevinschoon/pomo.git"
build_depends="golang-go"

pkgver() {
        git ls-remote "${url}" master | cut -f1
}

build() {
        make -j$(nproc)
}

package() {
        sudo install -Dm755 bin/pomo "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}
