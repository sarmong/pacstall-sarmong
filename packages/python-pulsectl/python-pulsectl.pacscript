name="python-pulsectl"
description="Python high-level interface and ctypes-based bindings for PulseAudio (libpulse)"
version="22.3.2"
url="https://files.pythonhosted.org/packages/source/p/pulsectl/pulsectl-${version}.tar.gz"
depends="libpulse-dev python3 python3-pip python-setuptools python-wheel-common"
hash="cc174e1ceebd4e6222c5b78f4f415f12e80753c9ab75ab354159b4cb5950b084"

prepare() {
        true
}

build() {
        sudo pip3 install build
        sudo python3 -m build --wheel --no-isolation
}

install() {
        sudo python3 setup.py install --root="${STOWDIR}/${name}"
        sudo install -Dm644 COPYING -t "$pkgdir/usr/share/licenses/$pkgname"
}
