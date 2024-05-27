pkgname="keyd"
pkgdesc=" A key remapping daemon for linux"
pkgver="2.4.3"
source="https://github.com/rvaiya/keyd/archive/refs/tags/v${pkgver}.zip"
build_depends="gcc"
optdepends=("python: for application specific remapping"
            "python-xlib: only for X support")
sha256sum="cdfcc2cf0518b9a2d292ebac17b18f78548b92803e2a9deeb9f18c9641bf80e5"

build() {
       cd "${_archive}"
        make -j$(nproc)
}

package() {
       cd "${_archive}"
        # opt-in for systemd service and libinput quirks
        mkdir -p "${STAGEDIR}/${name}"/usr/lib/systemd/system
        mkdir -p "${STAGEDIR}/${name}"/usr/share/libinput

        make DESTDIR="${STAGEDIR}/${name}" install
}

post_package() {
       cd "${_archive}"
        systemctl enable --now keyd
}
