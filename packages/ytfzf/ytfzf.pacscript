name="ytfzf"
description="A posix script to find and watch youtube videos from the terminal. (Without API)"
version="2.2"
url="https://github.com/pystardust/ytfzf/archive/refs/tags/v${version}.zip"
depends="jq curl"
hash="516b5918d58f0c0e67712c433db122091dc67cafd6ea903fbd2a0fd97cc60646"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo make DESTDIR=install doc
        sudo make DESTDIR="${STOWDIR}/${name}" install doc
}
