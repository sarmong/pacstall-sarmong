pkgname="python3-pulsectl"
pkgdesc="Python high-level interface and ctypes-based bindings for PulseAudio (libpulse)"
pkgver="23.5.2"
arch=("amd64")
source="https://files.pythonhosted.org/packages/source/p/pulsectl/pulsectl-${pkgver}.tar.gz"
makedepends=(python3-build libpulse-dev python3 python3-pip python3-setuptools python3-wheel)
depends=(libpulse-dev python3 python3-pip python3-setuptools python3-wheel)
replaces="${pkgname}"
sha256sum="e911d398eaf0539cf3c63b4217357b51a3d1b7e4a50607d1591cf2b49f5d2c6a"

build() {
   cd "pulsectl-${pkgver}"
        pip3 install build
        python3 -m build --wheel --no-isolation
}

package() {
   cd "pulsectl-${pkgver}"
        python3 setup.py install --root="${pkgdir}"
        install -Dm644 COPYING -t "${pkgdir}/usr/share/licenses/${pkgname}"
}
