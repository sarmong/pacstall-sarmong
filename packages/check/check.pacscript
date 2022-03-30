name="check"
description="A unit testing framework for C"
version="0.15.2"
url="https://github.com/libcheck/check/releases/download/${version}/check-${version}.tar.gz"
build_depends="gcc make autoconf automake libtool pkg-config texinfo flex bison check"
hash="a8de4e0bacfb4d76dd1c618ded263523b53b85d92a146d8835eb1a52932fa20a"

prepare() {
        autoreconf --install
        ./configure
}

build() {
        make -j$(nproc)
        make check
}

install() {
        sudo make DESTDIR="${STOWDIR}/${name}" install
}

postinst() {
        sudo ldconfig
}
