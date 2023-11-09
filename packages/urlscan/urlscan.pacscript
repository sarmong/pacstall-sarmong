name="urlscan"
pkgdesc="Mutt and terminal url selector (similar to urlview"
pkgver="1.0.1"
url="https://github.com/firecat53/urlscan/archive/refs/tags/${pkgver}.zip"
depends="python3-dev python3-pip python3-setuptools"
hash="8ed903dfc2d9582521e4542d8452bdc58b71d96bad7c79b872731e2db4bcffa5"

build() {
        ./setup.py build
}

package() {
        sudo ./setup.py install --root="${STOWDIR}/${name}" --optimize=1
}
