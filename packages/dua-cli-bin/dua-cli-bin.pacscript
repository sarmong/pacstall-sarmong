name="dua-cli-bin"
pkgname="dua-cli"
pkgdesc="View disk space usage and delete unwanted data, fast. "
pkgver="2.20.1"
url="https://github.com/Byron/dua-cli/releases/download/v${pkgver}/dua-v${pkgver}-x86_64-unknown-linux-musl.tar.gz"
hash="2bb8b2a9bd3ea051a5f0c30bca6557a475c13794ca04fbc199b2def7f811be6e"

package() {
        sudo install -Dm755 dua "${STOWDIR}/${name}/usr/local/bin/dua"
}

