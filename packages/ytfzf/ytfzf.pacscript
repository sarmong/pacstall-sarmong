name="ytfzf"
pkgdesc="A posix script to find and watch youtube videos from the terminal. (Without API)"
pkgver="2.2"
url="https://github.com/pystardust/ytfzf/archive/refs/tags/v${pkgver}.zip"
depends="jq curl"
hash="516b5918d58f0c0e67712c433db122091dc67cafd6ea903fbd2a0fd97cc60646"

package() {
        sudo make DESTDIR="${STOWDIR}/${name}" install doc addons
}
