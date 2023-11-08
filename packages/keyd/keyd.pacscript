name="keyd"
pkgdesc=" A key remapping daemon for linux"
pkgver="2.3.1-rc"
url="https://github.com/rvaiya/keyd/archive/refs/tags/v${pkgver}.zip"
build_depends="gcc"
optdepends=("python: for application specific remapping"
            "python-xlib: only for X support")
hash="8e6766ba47757b42583646e2234d27018628664ca89b34eb642d69c7afa7d1de"

prepare() {
        true
}

build() {
        make -j$(nproc)
}

install() {
        # opt-in for systemd service and libinput quirks
        sudo mkdir -p "${STOWDIR}/${name}"/usr/lib/systemd/system
        sudo mkdir -p "${STOWDIR}/${name}"/usr/share/libinput

        sudo make DESTDIR="${STOWDIR}/${name}" install
}

postinst() {
        sudo systemctl enable keyd
        sudo systemctl start keyd
}
