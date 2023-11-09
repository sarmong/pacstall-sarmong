name="rofi"
pkgdesc="A window switcher, application launcher and dmenu replacement"
pkgver="1.7.3"
url="https://github.com/davatorium/rofi/releases/download/1.7.3/rofi-${pkgver}.tar.xz"
build_depends="gcc make autoconf automake pkg-config flex bison"
depends="libcairo2-dev libgdk-pixbuf2.0-dev libglib2.0-dev libpango1.0-dev libpangocairo-1.0-0 librsvg2-dev libstartup-notification0-dev libsvgpp-dev libxcb1-dev libxcb-cursor-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev"
pacdeps=("check")
hash="25868b68ff98338c5421211fa2f8286f9c5b6f900b4bfb7c99e0fe64eb4db67b"

prepare() {
        mkdir build
        cd build
        ../configure
}

build() {
        make -j$(nproc)
}

package() {
        sudo make DESTDIR="${STOWDIR}/${name}" install
}
