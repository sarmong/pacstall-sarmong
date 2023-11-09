name="urlscan"
pkgdesc="Mutt and terminal url selector (similar to urlview"
pkgver="1.0.1"
url="https://github.com/firecat53/urlscan/archive/refs/tags/${pkgver}.zip"
makedepends=('python-build' 'python-installer' 'python-setuptools' 'python-wheel')
depends="python3-dev python3-pip python3-setuptools"
hash="8ed903dfc2d9582521e4542d8452bdc58b71d96bad7c79b872731e2db4bcffa5"

build() {
        python3 -m build --wheel --no-isolation
}

package() {
        python3 -m installer --destdir="$pkgdir" dist/*.whl
}
