name="keyd"
pkgdesc=" A key remapping daemon for linux"
pkgver="2.4.3"
url="https://github.com/rvaiya/keyd/archive/refs/tags/v${pkgver}.zip"
build_depends="gcc"
optdepends=("python: for application specific remapping"
            "python-xlib: only for X support")
hash="cdfcc2cf0518b9a2d292ebac17b18f78548b92803e2a9deeb9f18c9641bf80e5"

prepare() {
        true
}

build() {
        make -j$(nproc)
}

package() {
        # opt-in for systemd service and libinput quirks
        sudo mkdir -p "${STOWDIR}/${name}"/usr/lib/systemd/system
        sudo mkdir -p "${STOWDIR}/${name}"/usr/share/libinput

        sudo make DESTDIR="${STOWDIR}/${name}" install
}

post_install() {
        sudo systemctl enable keyd
        sudo systemctl start keyd
}
